class Request < ActiveRecord::Base

  belongs_to :post
  belongs_to :messenger, class_name: 'User', foreign_key: :messenger_id
  has_many :chat_messages, dependent: :destroy

  validates :message, :status, :messenger_id, :post_id, presence: true
  validates :status, :inclusion => {in: ["pending", "accepted", "declined"], allow_nil: false}


  validates :messenger, uniqueness: {scope: :post, message: "You've already sent a reaction to this post"}

  validate :validate_kind

  def validate_kind
    if messenger && post && post.author
      if messenger.kind == post.author.kind
        errors.add(:messenger_id, "can not respond to this post")
      end
    end
  end

  def user_agent

  end

end
