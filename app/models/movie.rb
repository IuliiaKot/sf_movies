class Movie < ActiveRecord::Base

  # def self.get_movie
  #     response = HTTParty.get('https://data.sfgov.org/resource/yitu-d5am.json')
  #     response.each do |movie|
  #       next unless movie['title']
  #       add_movie(movie)
  #     end
  # end
  #
  # def self.add_movie(movie)
  #   url = 'https://maps.googleapis.com/maps/api/geocode/json'
  #
  #   response = HTTParty.get(url, query: {:address => "#{movie["locations"]}, San Francisco, CA", :key => 'AIzaSyBvpcw2kh3E-pb6TARDCuB3oFreCiy3IkA'})
  #   latitude = response['results'].first['geometry']['location']['lat']
  #   longitude = response['results'].first['geometry']['location']['lng']
  #   Movie.create(title: movie["title"], actor_first: movie["actor_1"], actor_second: movie["actor_2"], actor_third: movie["actor_3"],
  #                 release_year: movie["release_year"], production_company: movie["production_company"], distributor: movie["distributor"],
  #                 writer: movie["writer"], director: movie["director"], latitude: latitude, longitude: longitude, funfuct: movie['fun_facts'], address: movie['locations'])
  # end

end
