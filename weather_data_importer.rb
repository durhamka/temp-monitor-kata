require_relative './temp_spread_finder'

class WeatherDataImporter
  attr_reader :data

  def initialize(file)
    @data = File.open(file) do |file|
      file.read
    end
  end

  def entries
    body.map do |line|
      TempSpreadFinder.new(line)
    end
  end

  private

  def lines
    data.lines
  end

  def body
    lines.slice(8..-3)
  end
end
