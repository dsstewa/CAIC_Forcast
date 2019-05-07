class CAICForecast::Forecast
  attr_accessor :location, :date, :f_today, :f_tomorrow, :summary
 @@all = []

def self.todays_forecast
   forecasts = []

    forecasts << self.nmountains
    forecasts << self.cmountains
    forecasts << self.smountains
    forecasts

end


def self.refresh
  @@all = []
  todays_forecast

end


 def self.nmountains
   forecast = self.new
   forecast.location = "Northern Mountians"
   forecast.date = "April 28 2019"
   forecast.f_today = "Moderate"
   forecast.f_tomorrow= "Moderate"
   forecast.summary = "Avalanche's are Dangerous, watch out!"
   @@all << forecast
  end

  def self.cmountains
    forecast = self.new
    forecast.location = "Central Mountians"
    forecast.date = "April 29 2019"
    forecast.f_today = "High"
    forecast.f_tomorrow= "Moderate"
    forecast.summary = "Avalanche's are Dangerous, watch out!"
    @@all << forecast

   end

   def self.smountains
     forecast = self.new
     forecast.location = "Southern Mountians"
     forecast.date = "April 30 2019"
     forecast.f_today = "Low"
     forecast.f_tomorrow= "Considerable"
     forecast.summary = "Avalanche's are Dangerous, watch out!"
     @@all << forecast

    end




def self.all
  @@all
end




end
