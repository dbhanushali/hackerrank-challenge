require 'Matrix'
require './lib/calculation'
# This module will return path to princess with all the calculation
module BotPrincess
  include Calculation

  def display_path_to_princess(_m, grid)
    begin
      nested_array = Matrix[*grid]
      bot_location = nested_array.find_index('m')
      princess_location = nested_array.find_index('p')
      return_location_values(
        difference(princess_location, bot_location, 'row'),
        difference(princess_location, bot_location, 'column')
      )
    rescue Exception => e
      puts "Found error"
      puts e.message
      puts e.backtrace.inspect
    end
  end

  def return_location_values(row_diff, col_diff)
    row_location = row_location(row_diff) * row_diff.abs
    col_location = col_location(col_diff) * col_diff.abs
    [row_location, col_location].join('')
  end
end
