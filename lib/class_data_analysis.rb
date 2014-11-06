class ClassDataAnalysis

  def initialize(data)
    @data = data
  end

  def data
    @data
  end

  def lowest_temperature
    # we have an array of instances of TemperatureData.
    # iterate through each one and grab value for low
    # find min.
    array_of_lows = []
    data.each {|instance| array_of_lows << instance.low}
    array_of_lows.min
  end

  def highest_temperature
    array_of_highs = []
    data.each {|instance| array_of_highs << instance.high}
    array_of_highs.max
  end

  def day_of_lowest_temperature
    array_of_lows = []
    data.each {|instance| array_of_lows << instance.low}
    array_of_lows.index(array_of_lows.min) + 1
  end

  def day_of_highest_temperature
    array_of_highs = []
    data.each {|instance| array_of_highs << instance.high}
    array_of_highs.index(array_of_highs.max) + 1
  end

  def average_temperatures
    data.map do |instance|
      (instance.low.to_f + instance.high.to_f)/2
    end
  end

end
