class Dashboard::HomeController < ApplicationController
  before_action :find_current_user, only: [:index]
   before_action :find_posts, only: [:index]
   before_action :find_received_requests, only: [:index]
   before_action :find_sent_requests, only: [:index]

  def index
    @samples = Post.all.sample(6)
  end

  private

  def find_current_user
    @user = current_user if current_user
  end

  def find_posts
    @posts = Post.where(author: current_user )
  end

  def find_received_requests
    @received_requests = current_user.received_requests
  end

  def find_sent_requests
    @sent_requests = current_user.sent_requests
  end



end
