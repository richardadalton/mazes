require_relative '../basic_grid/grid'
require_relative '../maze_lib/Wilsons'
require 'fileutils'
require 'chunky_png'

FileUtils.mkdir_p('mazes')

grid = Grid.new(20, 20)
Wilsons.on(grid)

filename = 'mazes/wilsons.png'
grid.to_png.save(filename)
puts "saved to #{filename}"
