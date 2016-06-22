class SharedStory < ActiveRecord::Base

  belongs_to :author, class_name: 'User', foreign_key: :author_id
  belongs_to :member, class_name: 'User', foreign_key: :member_id

#== Instance methods ========================================

  validates :title, :story, :member, :author, presence: { message: "can't be blank" }
  validates :title, length: {maximum: 30}
  validates :story, length: {maximum: 600}


end
