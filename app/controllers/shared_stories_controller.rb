class SharedStoriesController < ApplicationController
  before_action :find_story, only: [:show]

  def index
    @shared_stories = SharedStory.all
  end

  def show

  end

  def new
    @story = SharedStory.new
  end

  def create
    @story = SharedStory.new(story_params)
    @story.author = current_user

    if @story.save
      redirect_to shared_story_path(@story)
    else
      render :new
    end
  end

  private

  def find_story
    @story = SharedStory.find(params[:id])
  end

  def story_params
    params.require(:shared_story).permit(:title, :story, :member_id)
  end

end
