require_relative "./cli/version"
require_relative "./Forcast.rb"

class CLI

def call
  capture_data
  list_locations
  menu
  goodbye

end



def list_locations
 puts "Which location would you like to see today's Avalanche Forcast?"
 @locations = Forcast.all.each_with_index(1) do |forcast, index|
  puts "#{index}. #{forcast.location}."
   end
 end



end
