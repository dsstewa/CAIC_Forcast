class Forecast
  attr_accessor :location, :date, :b_treeline, :n_treeline, :a_treeline, :date, :summary

  def initialize(location)
   get_forcast(location)
  end
 @@all = []
 def get_forcast(location)
   @location = "Vail & Summit County"
   @date = "April 28 2019"
   @b_treeline = "Moderate"
   @n_treeline = "Moderate"
   @a_treeline = "Considerable"
   @summary = "Avalanche's are Dangerous, watch out!"
   @@all << self

  end





end
