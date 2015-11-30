Deployed version on Heroku: https://stormy-ocean-5824.herokuapp.com/

SF movies app is the single Ruby on Rails applications, which shows on a map where movies have been filmed in San Francisco.

The information abot movies collected from [ Film Locations.](https://data.sfgov.org/Culture-and-Recreation/Film-Locations-in-San-Francisco/yitu-d5am?) and save to database.In order to get the coordinates of the location I used [Geocoder](http://www.rubygeocoder.com/) gem.

  ```
  full_address = '3158 Mission St, San Francisco, CA'
  ```
  ```
  Geocoder.coordinates(full_address) 
  => [37.7468059, -122.4194721]
  ```

The user can search movie by name. Also I added basic search filter (by name, year, actor, director and the combination of these filters).

For backende I choose Ruby on Rails.  In front-end I used JS, CSS framework Bootstrap.

Notes

  If I had more time, I would...

  1. Improve the style for desktop view and add style for mobile devices
  2. Improve filters
  3. Add tests.
