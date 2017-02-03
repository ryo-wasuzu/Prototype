class IdeasController < ApplicationController
  def index
    @ideas = Idea.all.order("id DESC")
  end
end
