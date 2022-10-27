require_relative '../basic_grid/grid'
require_relative '../maze_lib/sidewinder'

grid = Grid.new(10, 10)
Sidewinder.on(grid)
puts grid

filename = 'mazes/sidewinder.png'
img = grid.to_png
img.save filename
puts "saved to #{filename}"
