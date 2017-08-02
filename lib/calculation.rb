# This module will return location values based on row & column difference
module Calculation
  def difference(princess_location, bot_location, type)
    if type == 'row'
      princess_location[0].to_i - bot_location[0].to_i
    elsif type == 'column'
      princess_location[1].to_i - bot_location[1].to_i
    end
  end

  def row_location(diff)
    if diff < 0
      "UP\n"
    elsif diff > 0
      "DOWN\n"
    end
  end

  def col_location(diff)
    if diff < 0
      "LEFT\n"
    elsif diff > 0
      "RIGHT\n"
    end
  end
end
