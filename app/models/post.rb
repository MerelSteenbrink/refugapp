class Post < ActiveRecord::Base

  has_many :received_requests, class_name: 'Request', dependent: :destroy
  belongs_to :author,  class_name: 'User', foreign_key: :author_id

  validates :subject, :content, :author_id, presence: true
  validates :subject, uniqueness: {scope: :author_id, message: "You've already made a post with a subject"}

  geocoded_by :address
  after_validation :geocode, if: :postal_code_changed?

 private

  def address
    "#{postal_code} #{city} Netherlands"
  end

end
