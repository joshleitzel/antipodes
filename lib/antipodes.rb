require 'antipodes/version'
require 'geocoder'

module Antipodes
  def self.for(*params)
    latitude, longitude = params.size > 1 ? params : Geocoder.search(params.first).first.coordinates

    antipodal_latitude = latitude > 0 ? -latitude : latitude.abs
    antipodal_longitude = longitude > 0 ? longitude - 180 : longitude + 180
    [antipodal_latitude, antipodal_longitude]
  end
end
