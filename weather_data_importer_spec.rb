require 'rspec'
require 'weather_data_importer'
require 'minimum_temp_finder'

describe WeatherDataImporter do
  describe '#entries' do
    it 'should create the right amount of entries' do
      file = 'fake_weather_data.txt'
      data_importer = WeatherDataImporter.new(file)

      expect(data_importer.entries.length).to eq(2)
    end
  end
end
