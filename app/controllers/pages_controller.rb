class PagesController < ApplicationController
  def home
    @posts = Post.all
    @posties = @posts.sort_by{ |post| post[:updated_at] }.reverse
  end
end
