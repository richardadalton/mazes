require 'set'

class Wilsons
  def self.on(grid)
    # collect all cells
    all_cells = []
    grid.each_cell { |c| all_cells << c }

    visited = Set.new
    # seed with a random cell
    visited << all_cells.sample

    unvisited = all_cells.reject { |c| visited.include?(c) }

    while !unvisited.empty?
      cell = unvisited.sample
      path = [cell]

      # random walk until we hit a visited cell
      until visited.include?(path.last)
        current = path.last
        neighbor = current.neighbours.sample
        raise "neighbor missing for #{current.inspect}" if neighbor.nil?

        if (idx = path.index(neighbor))
          # loop erasure: truncate path to the repeated neighbor
          path = path[0..idx]
        else
          path << neighbor
        end
      end

      # link the path into the maze and mark visited
      path.each_cons(2) do |c1, c2|
        c1.link(c2)
        visited << c1
      end
      visited << path.last

      unvisited = all_cells.reject { |c| visited.include?(c) }
    end

    grid
  end
end
