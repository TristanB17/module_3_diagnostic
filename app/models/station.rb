class Station
  def initialize(station_info)
    @name = station_info[:station_name]
    @address = format_address(station_info)
    @fuel_type = station_info[:fuel_type_code]
    @distance = "#{station_info[:distance] miles}"
    @access_times = station_info[:access_days_time]
  end

  def format_address(station_info)
    "#{station_info[:street_address]}, #{station_info[:city]}, #{station_info[:state]}, #{station_info[:zip]}"
  end
end
