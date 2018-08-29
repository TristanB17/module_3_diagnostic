class StationService
  def initialize(zip)
    @zip = zip
  end

  def find_stations_by_zip
    get_json("/nearest.json?location=#{@zip}&radius=10&limit=10&fuel_type=LPG,ELEC&state=CA&limit=2&api_key=a#{ENV["ALT_FUEL_FINDER_KEY"]}&format=JSON")
  end


  private
  def conn
    Faraday.new("https://developer.nrel.gov/api/alt-fuel-stations/v1") do |faraday|
      # faraday.headers['Authorization'] = ENV["ALT_FUEL_FINDER_KEY"]
      faraday_adapter(Faraday.default_adapter)
    end
  end

  def get_json(url)
    JSON.parse(conn.get(url).body, symbolize_names: true)
  end
end
