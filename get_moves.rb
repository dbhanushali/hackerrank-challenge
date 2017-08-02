require './lib/bot_princess'
extend BotPrincess

# Get value for grid
print 'Enter value for grid: '
m = gets.to_i

# creating grid based on input
grid = Array.new(m)

# getting values for each line of the grid
(0...m).each do |i|
  print 'Enter value for row # ' + (i + 1).to_s + ': '
  grid[i] = gets.strip.scan(/./)
end

# Output of the Princess location
print 'Shortest moves to reach princess: '
print display_path_to_princess(m, grid)
