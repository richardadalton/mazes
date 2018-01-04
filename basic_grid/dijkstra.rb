require 'distance_grid'
require 'binary_tree'
require 'sidewinder'

grid = DistanceGrid.new(10, 10)
Sidewinder.on(grid)

start = grid[0, 0]
distances = start.distances

grid.distances = distances
puts grid


grid.distances = distances.path_to(grid[grid.rows - 1, 0])
puts grid.to_s
