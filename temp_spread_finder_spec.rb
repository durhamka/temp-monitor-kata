require 'rspec'
require 'weather_data_entry'

describe WeatherDataEntry do
  describe '#min_temp' do
    it 'returns the minimum temperature for the entry' do
      data = "   1  88    59    74          53.8       0.00 F       280  9.6 270  17  1.6  93 23 1004.5\n"
      entry = WeatherDataEntry.new(data)

      expect(entry.min_temp).to eq(59)
    end
  end

  describe '#max_temp' do
    it 'returns the maximum temperature for the entry' do
      data = "   1  88    59    74          53.8       0.00 F       280  9.6 270  17  1.6  93 23 1004.5\n"
      entry = WeatherDataEntry.new(data)

      expect(entry.max_temp).to eq(88)
    end
  end

  describe '#temp_spread' do
    it 'returns the difference between the maximum and minimum temperature for the entry' do
      data = "   1  88    59    74          53.8       0.00 F       280  9.6 270  17  1.6  93 23 1004.5\n"
      entry = WeatherDataEntry.new(data)

      expect(entry.temp_spread).to eq(29)
    end
  end
end
