class CAICForecast::Forecast
  attr_accessor :location, :date, :f_today, :f_tomorrow
 @@all = []

def self.todays_forecast
   forecasts = []

   forecasts << self.nmountains
   forecasts << self.cmountains
   forecasts << self.smountains

   forecasts

end




 def nmountians
   self.new
   forecast.location = "Northern Mountians"
   forecast.date = "April 28 2019"
   forecast.f_today = "Moderate"
   forecast.f_tomorrow= "Moderate"
   forecast.summary = "Avalanche's are Dangerous, watch out!"
   @@all << self
  end



def self.all
  @@all
end




end
