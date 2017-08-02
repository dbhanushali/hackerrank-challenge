require 'Matrix'
require './lib/calculation'
# This module will return path to princess with all the calculation
module BotMoves
  include Calculation

  def next_move(_n, r, c, grid)
    begin
      nested_array = Matrix[*grid]
      bot_location = [r, c]
      princess_location = nested_array.find_index('p')
      get_next_move(
        difference(princess_location, bot_location, 'row'),
        difference(princess_location, bot_location, 'column')
      )
    rescue Exception => e
      puts "Found error"
      puts e.message
      puts e.backtrace.inspect
    end
  end

  def get_next_move(row_diff, col_diff)
    row_location = row_location(row_diff)
    col_location = col_location(col_diff)
    if row_location.nil?
      col_location
    else
      row_location
    end
  end
end
