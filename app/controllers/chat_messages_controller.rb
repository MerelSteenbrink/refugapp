class ChatMessagesController < ApplicationController
  before_action :set_request

    def index
      @chat_messages = @request.chat_messages.all
      # update_read_status unless @chat_messages.empty?
      #Dit misschien nog even uitzoeken heo en wat:::
      @chat_message = @request.chat_messages.new
      @user = current_user
    end

    def create
      @chat_message = ChatMessage.new(chat_message_params)
      @chat_message.request_id = @request.id
      @chat_message.user_id = current_user.id
      if @chat_message.save!
        redirect_to post_request_chat_messages_path(@request)
      end
    end

    private
    def chat_message_params
      params.require(:chat_message).permit(:content)
    end

    def set_request
      @request = Request.find(params[:request_id])
    end

  # def update_read_status
  #  @chat_messages.last.read = true if @chat_messages.last.user_id != current_user.id
  # end


end
