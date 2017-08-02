require './lib/bot_moves'
extend BotMoves
# Get value for grid
print 'Enter value for grid: '
n = gets.to_i

# Get value of Row and Cols
print 'Enter value of position of bot: '
r, c = gets.strip.split.map { |num| num }

# creating grid based on input
grid = Array.new(n)

# getting values for each line of the grid
(0...n).each do |i|
  print 'Enter value for row # ' + (i + 1).to_s + ': '
  grid[i] = gets.strip.scan(/./)
end

# Output of the next move
print 'Next move to reach princess: '
print next_move(n, r, c, grid)
