class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @posts = Post.all
    @posties = @posts.sort_by{ |post| post[:updated_at] }.reverse


    @markers = Gmaps4rails.build_markers(@posts) do |post, marker|
      marker.lat post.latitude
      marker.lng post.longitude

      # If we want to have clickable markers that show a little text box we need something like:
      # marker.infowindow render_to_string(:partial => "/posts/map_box", locals: {post: post})
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.author_id = current_user.id
    if @post.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:subject, :content, :city, :postal_code)
  end
end
