require 'rails_helper'

describe 'hitting the alt-fuel api' do
  context 'getting fuel stations' do
    it 'returns the desired fuel stations within the correct parameters' do
      stub_request(:get, "").
      with(
        headers: {
          'Accept'=>'*/*',
          'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
          'Authorization'=> "token #{ENV['ALT_FUEL_FINDER_KEY']}",
          'User-Agent'=>'Faraday v0.12.2'
        }).
        to_return(status: 200, body: "#{File.read('./spec/mock_requests/stations_by_zip.json')}", headers: {})
    end
  end
end
