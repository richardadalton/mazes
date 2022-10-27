require_relative '../maze_lib/colored_grid'
require_relative '../maze_lib/binary_tree'

grid = ColoredGrid.new(50, 50)
BinaryTree.on(grid)

start = grid[grid.rows / 2, grid.columns / 2]

grid.distances = start.distances


filename = 'mazes/red.png'
img = grid.to_png
img.save filename
puts "saved to #{filename}"

