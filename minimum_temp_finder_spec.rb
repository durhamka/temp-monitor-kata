require 'rspec'
require 'weather_data_importer'
require 'minimum_temp_finder'

describe MinimumTempFinder do
  describe '#min_temp_spread' do
    it 'returns the min temp spread' do
      entry_1 = double(temp_spread: 3)
      entry_2 = double(temp_spread: 1)
      entry_3 = double(temp_spread: 100)

      entries = [entry_1, entry_2, entry_3]
      min_temp_finder = MinimumTempFinder.new(entries)

      expect(min_temp_finder.min_temp_spread).to eq(1)
    end
  end
end
