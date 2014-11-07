class ClassDataAnalysis

  def initialize(data)
    @data = data
  end

  def data
    @data
  end

  def lows
    lows = []
    data.each {|instance| lows << instance.low}
    lows
  end

  def highs
    highs = []
    data.each {|instance| highs << instance.high}
    highs
  end

  def lowest_temperature
    lows.min
  end

  def highest_temperature
    highs.max
  end

  def day_of_lowest_temperature
    lows.index(lows.min) + 1
  end

  def day_of_highest_temperature
    highs.index(highs.max) + 1
  end

  def average_temperatures
    data.map do |instance|
      (instance.low.to_f + instance.high.to_f)/2
    end
  end

end
