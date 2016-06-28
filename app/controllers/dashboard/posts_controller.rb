class Dashboard::PostsController < ApplicationController
  before_action :find_user, only: [:index]
  before_action :find_posts, only: [:index]
  before_action :find_received_requests, only: [:index]

  def index

  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to dashboard_root_path
  end

  private

  def find_user
    @user = current_user if current_user
  end

   def find_posts
    @posts = Post.where(author: current_user )
  end

   def find_received_requests
    @received_requests = current_user.received_requests
  end



end
