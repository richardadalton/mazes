require_relative '../maze_lib/colored_grid'
require_relative '../maze_lib/Aldous_broder'

grid = ColoredGrid.new(30, 30)
AldousBroder.on(grid)

middle = grid[grid.rows / 2, grid.columns / 2]
grid.distances = middle.distances

filename = 'mazes/aldous_broder.png'
img = grid.to_png
img.save filename
puts "saved to #{filename}"
