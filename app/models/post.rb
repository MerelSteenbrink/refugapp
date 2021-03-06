class Post < ActiveRecord::Base
  extend Enumerize

  enumerize :category, in: [:language, :skills, :social]

  has_many :received_requests, class_name: 'Request', dependent: :destroy
  belongs_to :author,  class_name: 'User', foreign_key: :author_id



  accepts_nested_attributes_for :received_requests

  validates :subject, :content, :author_id, :postal_code, :city, :category, presence: true

  validates :subject, uniqueness: {scope: :author_id, message: "You've already made a post with this subject"}
  validates :subject, length: {maximum: 30}
  validates :content, length: {minimum: 80, maximum: 1000}
  validates_format_of :postal_code, with: /\A\d{4}\s?[a-zA-Z]{2}\z/i, :message => "Please fill in a right postal code"

  geocoded_by :address
  after_validation :geocode, if: :postal_code_changed?

  def button_valid(current_user)
    if !current_user
      return "redirect"
    elsif current_user != self.author &&
     current_user.kind != self.author.kind &&
     self.received_requests.select{ |req| req.messenger_id == current_user.id} == []
     return "request"
   else
    return "no request"
  end
end


private

def address
  "#{postal_code} #{city} Netherlands"
end

end
