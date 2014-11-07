class ArrayDataAnalysis

  def initialize(data)
    @data = data
  end

  def low_temps
    low_temps = []
    @data.each {|day| low_temps << day[2]}
    low_temps
  end

  def high_temps
    high_temps = []
    @data.each {|day| high_temps << day[1]}
    high_temps
  end

  def lowest_temperature
    low_temps.min
  end

  def highest_temperature
    high_temps.max
  end

  def day_of_lowest_temperature
    low_temps.index(low_temps.min) + 1
  end

  def day_of_highest_temperature
    high_temps.index(high_temps.max) + 1
  end

  def average_temperatures
    ave_temps = []
    @data.each do |day|
      ave_temps << (day[1] + day[2])/2.to_f
    end
    ave_temps
  end

end
