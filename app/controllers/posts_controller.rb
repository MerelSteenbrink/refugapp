class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @kind = params[:kind]
    @category = params[:category]

    #If a user has not searched/clicked on a specific kind of post, we decide what to show him based on the user.kind (refugee/dutchie) and show the posts of the opposite kind.

    if current_user && @kind == nil
      if current_user.kind == "refugee"
        @kind = "dutchie"
      else
        @kind = "refugee"
      end
    end

    #Based on the kind that was clicked by the user, or the default we provide based on the above lines of code, we filter!

    if @kind == "dutchie" || @kind == "refugee"
      @posts = Post.joins(:author).where(users: {kind: @kind})
    else
      @posts = Post.all
    end


    if @category && @category != "all"
      @posts = @posts.where(category: @category)
    end




    # Order posts based on descending order (newest on top)
    @posties = @posts.order(updated_at: :desc)

    @markers = Gmaps4rails.build_markers(@posts) do |post, marker|
      marker.lat post.latitude
      marker.lng post.longitude

    # For clickable markers that show a little text box
    marker.infowindow render_to_string(:partial => "/posts/map_box", locals: {post: post})
  end
end

def show
  @post = Post.find(params[:id])
  @author = User.find(@post.author_id)
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
  params.require(:post).permit(:subject, :content, :city, :postal_code, :category)
end
end
