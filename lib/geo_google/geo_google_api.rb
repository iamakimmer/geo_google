require 'net/http'
require 'uri'
require 'json'

module GeoGoogle

  class GeoGoogleApi

    MAP_URL = 'http://maps.googleapis.com/maps/api/geocode/json?sensor=false&address='

    def lookup(element_name)
      result = open(MAP_URL.concat(element_name.gsub(/ /, '+')))
      puts result
      ApiResponse.new(result)
    end

    private

    def open(url)
      Net::HTTP.get(URI.parse(url))
    end

  end

  class ApiResponse
    attr_reader :formatted_address,
                :latitude,
                :longitude,
                :status

    def initialize(result)
      r = JSON.parse(result)
      @status = r["status"]
      @formatted_address = r["results"][0]["formatted_address"]
      @latitude = r["results"][0]["geometry"]["location"]["lat"]
      @longitude = r["results"][0]["geometry"]["location"]["lng"]
    end
  end
end