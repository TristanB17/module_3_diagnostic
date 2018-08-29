class StationService
  def initialize(zip)
    @zip = zip
  end


  private
  def conn
    Faraday.new("https://developer.nrel.gov/docs/transportation/alt-fuel-stations-v1/nearest") do |faraday|
      # faraday.headers['Authorization'] = ENV["ALT_FUEL_FINDER_KEY"]
      faraday_adapter(Faraday.default_adapter)
    end
  end

  def get_json(url)
    JSON.parse(conn.get(url).body, symbolize_names: true)
  end
end
