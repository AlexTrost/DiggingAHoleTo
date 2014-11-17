class WelcomeController < ApplicationController
  def index
	@hello = "HI"
	@image =  "https://maps.googleapis.com/maps/api/streetview?size=200x200&location=40.720032,-73.988354&heading=235"
	# include HTTParty
 #    base_uri 'https://maps.googleapis.com/maps/api/streetview?size=900x600&location='

    # def results(lat, long)
    # 	key = ENV["GOOGLE_MAPS_KEY"]
    #   response = self.class.get("#{lat},#{long}")
    #   response = self.class.get("#{lat},#{long}")
    #   return JSON.parse(response.body)
    # end
  end
end




