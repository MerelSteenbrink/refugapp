class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts, foreign_key: :author_id
  has_many :received_requests, class_name: 'Request', through: :posts
  has_many :sent_requests, class_name: 'Request', foreign_key: :messenger_id

end
# fix
