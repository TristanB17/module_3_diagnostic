class StationService
  def initialize(zip)
    @zip = zip
  end

  def find_stations_by_zip
    get_json("/api/alt-fuel-stations/v1/nearest.json?location=#{@zip}&fuel_type=LPG,ELEC&limit=10&api_key=#{ENV["ALT_FUEL_FINDER_KEY"]}&format=JSON")
  end


  private
  def conn
    Faraday.new("https://developer.nrel.gov") do |faraday|
      faraday.adapter(Faraday.default_adapter)
    end
  end

  def get_json(url)
    really = JSON.parse(conn.get(url).body, symbolize_names: true)
    binding.pry
  end
end
