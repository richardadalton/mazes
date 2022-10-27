require_relative '../maze_lib/distance_grid'
require_relative '../maze_lib/binary_tree'
require_relative '../maze_lib/sidewinder'

grid = DistanceGrid.new(10, 10)
BinaryTree.on(grid)

start = grid[0, 0]
distances = start.distances
new_start, distance = distances.max

new_distances = new_start.distances
goal, distance = new_distances.max

grid.distances = new_distances.path_to(goal)
puts grid

filename = 'mazes/djikstra.png'
img = grid.to_png
img.save filename
puts "saved to #{filename}"

