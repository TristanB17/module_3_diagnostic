class SearchController < ApplicationController
  def index
    presenter = StationPresenter.new(params[:q])
    @nearest_stations = presenter.zip_stations
  end
end
