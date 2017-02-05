class IdeasController < ApplicationController
  before_action :move_to_index, except: :index
  def index
    @ideas = Idea.all.order("id ASC")
  end

  def new
  end

  def create
    @idea = Idea.create(image_url: ideas_params[:image_url],title: ideas_params[:title],contents: ideas_params[:contents])
  end

  private
   def move_to_index
    redirect_to action: :index unless user_signed_in?
   end

   def ideas_params
    params.permit(:image_url,:title,:contents)
   end
end
