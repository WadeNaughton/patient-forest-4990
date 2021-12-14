class StudiosController < ApplicationController

  def index
    @studios = Studio.all
    @movies = Movie.pluck(:title)

  end

end
