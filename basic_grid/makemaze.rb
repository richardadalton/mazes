require 'optparse'
require 'grid'
require 'binary_tree'
require 'sidewinder'


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

end.parse!



grid = Grid.new(Integer(options[:height]), Integer(options[:width]))

if options[:type] == 'binarytree'
  puts "Building a Binary Tree Maze"
  BinaryTree.on(grid)
elsif options[:type] == 'sidewinder'
  puts "Building a Sidewinder Maze"
  Sidewinder.on(grid)
end

puts grid

img = grid.to_png
img.save "mazes/maze.png"