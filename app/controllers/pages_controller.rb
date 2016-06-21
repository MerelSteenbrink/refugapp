class PagesController < ApplicationController
  def home

### This commented part is just in case we only want to display the dutchie to the refugees and the other way around

=begin
       if !current_user
          @posts = @postsall
        elsif current_user.kind == "dutchie"
          @posts = @postsall.select { |post| User.find(post.author_id).kind == 'refugee' }
        else
          @posts = @postsall.select { |post| User.find(post.author_id).kind == 'dutchie' }
        end
=end

    @posts = Post.all
    @posties = @posts.sort_by{ |post| post[:updated_at] }.reverse
  end
end
