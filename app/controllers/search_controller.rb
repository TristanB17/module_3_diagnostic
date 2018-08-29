class SearchController < ApplicationController
  def index
    @nearest_stations = StationPresenter.new(params[:zip_code])
  end
end
