class Request < ActiveRecord::Base

  belongs_to :post
  belongs_to :messenger, class_name: 'User', foreign_key: :messenger_id
end
# test
