class Dashboard::HomeController < ApplicationController
  before_action :find_user, only: [:index]
   before_action :find_posts, only: [:index]

  def index

  end

  private

  def find_user
    @user = current_user if current_user
  end

  def find_posts
    @posts = Post.where(author: current_user )
  end

end
