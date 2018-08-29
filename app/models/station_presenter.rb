class StationPresenter
  def initialize(zip_code)
    @service = StationService.new(zip_code)
  end

  def zip_stations
    @service.find_stations_by_zip.map do |station|
      Station.new(station)
    end
  end
end
