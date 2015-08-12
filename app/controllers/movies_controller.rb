class MoviesController < ApplicationController

  def index
    @movies = Movie.select("distinct title").order("title")
    if params["movie.title"].nil?

      #Movie.get_movie() if Movie.count == 0
      @movies = Movie.select("distinct title").order("title")
      @m = Movie.all
    else
      condition = [!params["movie.title"].empty?, !params["release_year"].empty?, !params["name"].empty?, !params["director"].empty?]
      name = params["name"].titleize
      case condition
        when [false,true, true, true]
          @m = Movie.select('*').where('release_year=? and (actor_first=? or actor_second=? or actor_third=?) and director=?', params["release_year"], name, name, name, params["director"].titleize)
        when [false,true, true, false]
          @m = Movie.select('*').where('release_year=? and (actor_first=? or actor_second=? or actor_third=?)', params["release_year"],name, name, name)
        when [false,true, false, true]
          @m = Movie.select('*').where('release_year=? and director=?', params["release_year"], params["director"].titleize)
        when [false,false, true, true]
          @m = Movie.select('*').where('(actor_first=? or actor_second=? or actor_third=?) and director=?', name, name, name, params["director"].titleize)
        when [false,true, false, false]
          @m = Movie.select('*').where('release_year=?', params["release_year"])
        when [false,false, true, false]
          @m = Movie.select('*').where('actor_first=? or actor_second=? or actor_third=?', name, name, name)
        when [false,false, false, true]
          @m = Movie.select('*').where('director=?', params["director"].titleize)
        when [true, false,false, false]
          @m = Movie.select('*').where('title=?', params["movie.title"])
        when [false,false,false,false]
          @m = Movie.all
       end





      # if (!(params["release_year"].empty?) and !(params["name"].empty?))
      #   arg = {:release_year => params["release_year"], :name => params["name"], :director => params["director"]}
      #   @movies = Movie.select("distinct title").order("title")
      #   #@m = Movie.choose_from_movie(arg)
      #   @m = Movie.select('*').where('release_year=? and (actor_first=? or actor_second=? or actor_third=?)', params["release_year"], params["name"], params["name"], params["name"])
      #
      # elsif !(params["release_year"].empty?)
      #   arg = {:release_year => params["release_year"], :name => params["name"], :director => params["director"]}
      #   @movies = Movie.select("distinct title").order("title")
      #   @m = Movie.select('*').where('release_year=?', params["release_year"])
      # #  @m = Movie.choose_from_movie(arg)
      #
      # elsif !(params["name"].empty?)
      #
      #   @movies = Movie.select("distinct title").order("title")
      #   @m = Movie.select('*').where('actor_first=? or actor_second=? or actor_third=?', params["name"], params["name"], params["name"])
      #
      # elsif !(params["movie.title"].empty?)
      #   @movies = Movie.select("distinct title").order("title")
      #   @m = Movie.select('*').where('title=?', params["movie.title"])
      #
      # else
      #   @movies = Movie.select("distinct title").order("title")
      #   @m = Movie.all
      # end
    end
    #  render :json => @m

  end


  def show

    render 'index'
  end
end
