class SentencesController < ApplicationController
  before_action :authenticated_only
  def new
    @sentence = Sentence.new
    @img_link = "#{rand(10)}.jpg"
    @story = Story.find(params[:story_id])
  end

  def create
    @story = Story.find(params[:story_id])
    @sentence = Sentence.new(sentence_params)
    current_user = User.find(session[:current_user_id])
    @sentence.user = current_user
    @sentence.story = @story
    if @sentence.save
      redirect_to story_path(@story)
    else
      render :new
    end
  end

  private
  def sentence_params
    params.require(:sentence).permit(:content, :image, :sentence_id, :story_id)
  end
end
