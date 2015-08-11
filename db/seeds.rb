# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
def self.add_movie(movie)
    # res = Movie.where("title=? AND address=?", movie["title"], movie["locations"]);
    # if (res.length == 0 && !movie["locations"].nil?)

    if (movie["locations"])
      sleep 3
        full_address = movie["locations"] + ", " + "San Francisco, CA"
        lat_lng = Geocoder.coordinates(full_address)
        if (lat_lng.length != 0)
        Sf.create(title: movie["title"], actor_first: movie["actor_1"], actor_second: movie["actor_2"], actor_third: movie["actor_3"],
                release_year: movie["release_year"], production_company: movie["production_company"], distributor: movie["distributor"],
                writer: movie["writer"], director: movie["director"], latitude: lat_lng[0], longitude: lat_lng[1], funfuct: movie['fun_facts'], address: movie["locations"])
    #  end
  end
end

  response = HTTParty.get('https://data.sfgov.org/api/views/yitu-d5am/rows.xml?accessType=DOWNLOAD')
  response = response.parsed_response['response']['row']['row']

  response.each do |movie|
    next unless movie['title']
    add_movie(movie)
  end
