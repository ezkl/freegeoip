module FreeGeoIP
  class Response
    attr_reader :city, :region, :region_code, :longitude, :latitude, :country, :country_code, :ip, :zip_code, :metro_code
    
    def initialize(response_body)
      @city         = response_body['city']
      @region       = response_body['region_name']
      @region_code  = response_body['region_code']
      @longitude    = response_body['longitude']
      @latitude     = response_body['latitude']
      @country      = response_body['country_name']
      @country_code = response_body['country_code']
      @ip           = response_body['ip']
      @zip_code     = response_body['zipcode']
      @metro_code   = response_body['metrocode']
    end
  end
end
