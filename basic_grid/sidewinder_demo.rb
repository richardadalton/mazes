require 'grid'
require 'sidewinder'

grid = Grid.new(30, 30)
Sidewinder.on(grid)
puts grid

img = grid.to_png
img.save "maze.png"