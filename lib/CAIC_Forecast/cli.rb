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
   # binding.pry
    if selection.to_i > 0 && selection.to_i <= CAICForecast::Forecast.all.length
       CAICForecast::Forecast.forecast_from_selection(selection)
       
     else
       bad_entry
     end

    end
  goodbye
 end


def bad_entry
puts "--------------------------------------------------------------"
puts "Please make a selection 1 - #{CAICForecast::Forecast.all.length}"
puts "--------------------------------------------------------------"
end



def goodbye
puts "********************************************************"
puts "Thanks for checking the forecast, stay safe out there!"
puts "********************************************************"
end
end

#// ♥ ruby ./bin/CAIC_Forecast
