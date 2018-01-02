require 'grid'
require 'binary_tree'

grid = Grid.new(10, 10)
BinaryTree.on(grid)
puts grid

img = grid.to_png
img.save "mazes/basic.png"