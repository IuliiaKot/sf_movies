class MoviesController < ApplicationController

  def index

     Movie.get_movie() if Movie.count == 0
     @movies = Movie.select("distinct title").order("title")
     @m = Movie.all

    #  render :json => @m
  end
end
