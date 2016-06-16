class Post < ActiveRecord::Base

  has_many :received_requests, class_name: 'Request'
  belongs_to :author,  class_name: 'User', foreign_key: :author_id

  geocoded_by :address
  after_validation :geocode, if: :postal_code_changed?

 private

  def address
    "#{postal_code} #{city}"
  end


end
