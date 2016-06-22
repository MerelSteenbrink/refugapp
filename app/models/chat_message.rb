class ChatMessage < ActiveRecord::Base
  belongs_to :request



  def message_time
    created_at.strftime("%m/%d/%y at %l:%M %p")
  end
end
