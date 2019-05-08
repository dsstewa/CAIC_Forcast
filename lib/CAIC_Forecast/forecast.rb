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
  puts "---------------------------------------------------------------------"
  puts "---------------------------------------------------------------------"
  puts "The forecast for the #{zonei.location} is #{zonei.f_today} today (#{zonei.date})."
  puts "The forecast for tomorrow is #{zonei.f_tomorrow}"
  puts "Would you like to read the forecast summary? (y/n)"
  selection = gets.chomp
  if selection == "y"
      puts "#{zonei.summary}"
    end
  puts "Thanks for checking the Forecast Today!"
  puts "---------------------------------------------------------------------"
  puts "---------------------------------------------------------------------"
end


def self.refresh
  @@all = []
  todays_forecast
end


 def self.nmountains
  doc = Nokogiri::HTML(open("https://embedded-rails-production.avalanche.state.co.us/forecasts/regional-forecast/northern"))
   forecast = self.new
   forecast.location = doc.css("h1.page-title").text
   forecast.date = doc.css("span.Issued_At--at--value").text
   forecast.f_today = doc.css("text")[2].text
   forecast.f_tomorrow= doc.css("text")[3].text
   forecast.summary = doc.css("div.Blurb p").text
   @@all << forecast
  end

  def self.cmountains

doc = Nokogiri::HTML(open("https://embedded-rails-production.avalanche.state.co.us/forecasts/regional-forecast/central"))

    forecast = self.new
    forecast.location = doc.css("h1.page-title").text
    forecast.date = doc.css("span.Issued_At--at--value").text
    forecast.f_today = doc.css("text")[2].text
    forecast.f_tomorrow= doc.css("text")[3].text
    forecast.summary = doc.css("div.Blurb p").text
    @@all << forecast

   end

   def self.smountains
     doc = Nokogiri::HTML(open("https://embedded-rails-production.avalanche.state.co.us/forecasts/regional-forecast/southern"))
     forecast = self.new
     forecast.location = doc.css("h1.page-title").text
     forecast.date = doc.css("span.Issued_At--at--value").text
     forecast.f_today = doc.css("text")[2].text
     forecast.f_tomorrow= doc.css("text")[3].text
     forecast.summary = doc.css("div.Blurb p").text
     @@all << forecast

    end




def self.all
  @@all
end




end
