require 'colored_grid'
require 'binary_tree'
require 'sidewinder'

grid = ColoredGrid.new(25, 25)
Sidewinder.on(grid)

start = grid[grid.rows / 2, grid.columns / 2]

grid.distances = start.distances


filename = "mazes/colorized.png"
grid.to_png.save(filename)