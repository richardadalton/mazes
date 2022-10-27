require_relative '../basic_grid/grid'
require_relative '../maze_lib/binary_tree'

grid = Grid.new(10, 10)
BinaryTree.on(grid)
puts grid

filename = 'mazes/bt.png'
img = grid.to_png
img.save filename
puts "saved to #{filename}"

