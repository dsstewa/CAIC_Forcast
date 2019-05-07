# require_relative "./cli/version"
# require_relative "./Forcast.rb"

class CAICForecast::CLI

def call

  capture_data
  list_locations
  menu
  # goodbye

end

def capture_data
  @forcast = CAICForecast::Forecast.todays_forecast

end

def list_locations
 puts "Which location would you like to see today's Avalanche Forecast?"
 CAICForecast::Forecast.all.each_with_index do |forecast, index|
    puts "#{index + 1}. #{forecast.location}."
   end
 end

def menu
  puts "Please type the number of the forecast zone or exit to quite"
  binding.pry
  selection = nil
  while selection != "exit"
    selection = gets.chomp
  end
  puts "you exited the loop"

end



end

#// ♥ ruby ./bin/CAIC_Forecast
