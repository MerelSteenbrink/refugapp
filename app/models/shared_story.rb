class SharedStory < ActiveRecord::Base

  belongs_to :author, class_name: 'User', foreign_key: :author_id
  belongs_to :member, class_name: 'User', foreign_key: :member_id

end
