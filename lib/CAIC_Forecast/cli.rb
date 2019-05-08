# require_relative "./cli/version"
# require_relative "./Forcast.rb"

class CAICForecast::CLI

def call

  capture_data
  menu

end

def capture_data
  @forcast = CAICForecast::Forecast.todays_forecast

end

def list_locations
 CAICForecast::Forecast.all.each_with_index do |forecast, index|
    puts "#{index + 1}. #{forecast.location}."
   end
 end

def menu
  selection = nil
   puts "---------------------------------------------------------------"
  while selection != "exit"
    puts "Which location would you like to see today's Avalanche Forecast?"
   list_locations
    puts "Please type the number of the forecast zone or exit to exit"
    selection = gets.chomp
    if selection.to_i > 0
       CAICForecast::Forecast.forecast_from_selection(selection)
     end

    end
  goodbye
 end

def goodbye
puts "********************************************************"
puts "Thanks for checking the forecast, stay safe out there!"
puts "********************************************************"
end
end

#// ♥ ruby ./bin/CAIC_Forecast
