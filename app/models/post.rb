class Post < ActiveRecord::Base

  has_many :received_requests, class_name: 'Request', dependent: :destroy
  belongs_to :author,  class_name: 'User', foreign_key: :author_id

  validates :subject, :content, :author_id, :postal_code, :city, presence: true
  validates :subject, uniqueness: {scope: :author_id, message: "You've already made a post with this subject"}
  validates_format_of :postal_code, with: /\A\d{4}\s?[a-zA-Z]{2}\z/i, :message => "Please fill in a right postal code"

  geocoded_by :address
  after_validation :geocode, if: :postal_code_changed?

  def button_valid?(current_user)
    if current_user &&
     current_user != self.author &&
     current_user.kind != self.author.kind &&
     self.received_requests.select{ |req| req.messenger_id == current_user.id} == []
     return true
   else
    return false
  end
end


private

def address
  "#{postal_code} #{city} Netherlands"
end

end
