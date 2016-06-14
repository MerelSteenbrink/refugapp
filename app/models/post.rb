class Post < ActiveRecord::Base

  has_many :received_requests, class_name: 'Request'
  belongs_to :author,  class_name: 'User', foreign_key: :author_id

end
# test

# I think this looks good!
