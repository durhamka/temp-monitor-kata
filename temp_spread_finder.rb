class TempSpreadFinder
  attr_reader :data

  def initialize(data)
    @data = data
  end

  def temp_spread
    max_temp - min_temp
  end

  private

  def columns
    data.split
  end

  def min_temp
    columns[2].to_i
  end

  def max_temp
    columns[1].to_i
  end

  def day
    columns[0].to_i
  end
end
