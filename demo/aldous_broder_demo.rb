require_relative '../maze_lib/colored_grid'
require_relative '../maze_lib/Aldous_broder'

6.times do |n|
  grid = ColoredGrid.new(30, 30)
  AldousBroder.on(grid)

  middle = grid[grid.rows / 2, grid.columns / 2]
  grid.distances = middle.distances

  filename = 'mazes/aldous_broder_%02d.png' % n
  img = grid.to_png
  img.save filename
  puts "saved to #{filename}"
end