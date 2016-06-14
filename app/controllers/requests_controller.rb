class Posts::RequestsController < ApplicationController
  before_action :find_post, only: [:new, :create]
  before_action :request_params
  def new
    @request = Request.new
  end

  def create
    @request = Request.new(request_params)
    @request.messenger_id = current_user[:id]
    @request.status =  "pending"
    @request.post_id = @post.id
    if @request.save
      redirect_to posts_path()
    else
      render :new
    end
  end


  private

  def find_post
    @post = Post.find(params[:post_id])
  end

  def request_params
    params.require(:request).permit(:message, :status)
  end

end
