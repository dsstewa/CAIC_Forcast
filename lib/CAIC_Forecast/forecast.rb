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

def self.forecast_from_selection(zone)
  zonei = @@all[zone.to_i - 1]

  puts "The forecast for the #{zonei.location} is #{zonei.f_today} today (#{zonei.date})."
  puts "The forecast for tomorrow is #{zonei.f_tomorrow}"
  puts "Would you like to read the forecast summary? (y/n)"
  selection = gets.chomp
  if selection == "y"
      puts "#{zonei.summary}"
    end


  puts "Thanks for checking the Forecast Today!"

end





def self.refresh
  @@all = []
  todays_forecast

end


 def self.nmountains
  doc = Nokogiri::HTML(open("https://avalanche.state.co.us/forecasts/regional-avalanche/northern-mountains/"))
  doc.css("div.site-inner").each do |value|
    binding.pry
  end


  binding.pry
   forecast = self.new
   forecast.location = doc.css("div.site-inner h1").text
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
