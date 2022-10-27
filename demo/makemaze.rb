require 'optparse'
require_relative '../basic_grid/grid'
require_relative '../maze_lib/binary_tree'
require_relative '../maze_lib/sidewinder'


# This will hold the options we parse
options = {}

OptionParser.new do |parser|

  # Whenever we see -n or --name, with an
  # argument, save the argument.
  parser.on("-t", "--type TYPE", "The type of maze to draw") do |v|
    options[:type] = v
  end
  parser.on("-w", "--width WIDTH", "The width of the maze") do |v|
    options[:width] = v
  end
  parser.on("-h", "--height HEIGHT", "The height of the maze") do |v|
    options[:height] = v
  end
  parser.on("-f", "--file FILENAME", "Filename for generated image") do |v|
    options[:file] = v
  end

end.parse!


grid = Grid.new(Integer(options[:height]), Integer(options[:width]))

case options[:type]
when 'binarytree'
  puts "Building a Binary Tree Maze"
  BinaryTree.on(grid)
when 'sidewinder'
  puts "Building a Sidewinder Maze"
  Sidewinder.on(grid)
end

filename = options[:file]
img = grid.to_png
img.save filename
puts "saved to #{filename}"

