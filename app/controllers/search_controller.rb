class SearchController < ApplicationController
  def index
    presenter = StationPresenter.new(params[:zip_code])
    @nearest_stations = presenter.zip_stations
  end
end
