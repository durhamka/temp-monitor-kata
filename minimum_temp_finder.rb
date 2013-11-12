class MinimumTempFinder
  attr_reader :entries

  def initialize(entries)
    @entries = entries
  end

  def min_temp_spread
    entries.map(&:temp_spread).min
  end
end
