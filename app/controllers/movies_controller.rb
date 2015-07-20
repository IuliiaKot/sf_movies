class MoviesController < ApplicationController

  def index
    if params["movie.title"].nil?
      Movie.get_movie() if Movie.count == 0
      @movies = Movie.select("distinct title").order("title")
      @m = Movie.all
    else
      @movies = Movie.select("distinct title").order("title")
      @m = Movie.select('*').where('title=?', params["movie.title"])
    end
    #  render :json => @m

  end


  def show

    render 'index'
  end
end
