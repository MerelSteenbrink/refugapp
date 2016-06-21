class PagesController < ApplicationController
  def home
    @postsall= Post.all

=begin
       if !current_user
          @posts = @postsall
        elsif current_user.kind == "dutchie"
          @posts = @postsall.select { |post| User.find(post.author_id).kind == 'refugee' }
        else
          @posts = @postsall.select { |post| User.find(post.author_id).kind == 'dutchie' }
        end
=end

    @posts = @postsall
    @posties = @posts.sort_by{ |post| post[:updated_at] }.reverse
  end
end
