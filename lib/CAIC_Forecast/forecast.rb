class CAICForecast::Forecast
  attr_accessor :location, :date, :f_today, :f_tomorrow

  def initialize(location)
   get_forcast(location)
  end
 @@all = []
 def get_forcast(location)
   @location = location
   @date = "April 28 2019"
   @f_today = "Moderate"
   @f_tomorrow= "Moderate"
   @summary = "Avalanche's are Dangerous, watch out!"
   @@all << self

  end

def self.all
  @@all

end




end
