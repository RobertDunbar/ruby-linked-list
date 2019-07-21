class Node
    attr_accessor :next_node, :value

    def initialize(value=nil)
        @value = value
        @next_node = nil
    end
end