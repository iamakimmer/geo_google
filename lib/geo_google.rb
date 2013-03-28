require "geo_google/version"
require "geo_google/geo_google_api"


module GeoGoogle

  def self.lookup(address)
    GeoGoogleApi.new.lookup(address)
  end

end
