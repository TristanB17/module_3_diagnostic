class StationPresenter
  def initialize(zip_code)
    @service = StationService.new(zip_code)
  end

  def zip_stations
    @service.find_stations_by_zip
  end
end
