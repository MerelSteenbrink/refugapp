class ChatMessage < ActiveRecord::Base
  belongs_to :request
end
