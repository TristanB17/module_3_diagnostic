class StationPresenter
  def initialize(zip_code)
    @service = StationService.new(zip_code)
  end
end
