class PolyTreeNode

    attr_reader :parent, :children, :value

    def initialize(value)
        @parent = nil
        @children = Array.new()
        @value = value
    end

    def parent= (node)
        if @parent != nil && node != nil
            @parent.children.delete(self)
        end
        @parent = node
        node.children << self if node != nil
    end
end