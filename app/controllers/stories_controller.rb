class StoriesController < ApplicationController
  before_action :authenticated_only
  def index
    @stories = Story.all
  end

  def new
    @story = Story.new
  end

  def show
    @story = Story.find(params[:id])
  end

  def create
    @story = Story.new(story_params)
    user = User.find(session[:current_user_id])
    @story.user = user
    if @story.save
      redirect_to root_url
    else
      flash[:alert] = "fail"
    end
  end

  def destroy
    @story = Story.find(params[:id])
    @story.destroy
    redirect_to root_url

  end
private

  def story_params
    params.require(:story).permit(:name)
  end
end
