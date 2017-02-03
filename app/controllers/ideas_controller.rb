class IdeasController < ApplicationController
  def index
    @ideas = Idea.all.order("id ASC")
  end
end
