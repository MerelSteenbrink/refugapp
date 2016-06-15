class Post < ActiveRecord::Base

  has_many :received_requests, class_name: 'Request'
  belongs_to :author,  class_name: 'User', foreign_key: :author_id

  geocoded_by :postal_code
  after_validation :geocode, if: :postal_code_changed?

end
