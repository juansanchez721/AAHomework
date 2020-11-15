require "byebug"


class GraphNode

    attr_accessor :value, :neighbors
    def initialize(value)
       @value = value
       @neighbors = []
    end

    def bfs(starting_node, target_value)
        # p starting_node.neighbors
         queue = starting_node.neighbors
        visited = [starting_node.value]
        # debugger
        queue.each do |node|
            # debugger
            if node.value == target_value
                return node
            end
            # debugger
            visited << node.value
            # debugger
            node.neighbors.each {|nod| queue << nod if !visited.include?(nod.value)}
            # debugger
            # queue.shift
        end
        nil
    end

    # def inspect
    #     @value.inspect
    #   end


end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

p a.bfs(a, "f")
