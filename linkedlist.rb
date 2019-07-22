class LinkedList
    attr_accessor :name

    def initialize(name)
        @name = name
        @head = nil
        @tail = nil
    end

    def append(node)
        if @head.nil?
            @head = node
            @tail = node
        else
            @tail.next_node = node
            @tail = node
        end
    end

    def prepend(node)
        if @head.nil?
            @head = node
            @tail = node
        else
            node.next_node = @head
            @head = node
        end
    end

    def size
        current_node = @head
        counter = 0
        while !current_node.nil?
            counter += 1
            current_node = current_node.next_node
        end
        counter
    end

    def head
        return @head
    end

    def tail
        return @tail
    end

    def at(index)
        current_node = @head
        index.times do
            current_node = current_node.next_node
        end
        current_node
    end

    def pop
        return nil if @tail.nil?
        current_node = @head
        while !current_node.nil?
            if current_node.next_node.next_node.nil?
                current_node.next_node = nil
            end
            current_node = current_node.next_node
        end
        current_node
    end

    def contains? (data)
       current_node = @head
       while !current_node.nil?
            return true if current_node.value == data
            current_node = current_node.next_node
        end
        false
    end

    def find(data)
        current_node = @head
        index = 0
        while !current_node.nil?
            return index if current_node.value == data
            index += 1
            current_node = current_node.next_node
        end
        nil
    end

    def to_s
        current_node = @head
        output = ""
        while !current_node.nil?
            output += current_node.value.to_s + " "
            current_node = current_node.next_node
        end
        output
    end

    def insert_at(node, index)
        return self.prepend(node) if index == 0
        current_node = @head
        (index - 1).times { current_node = current_node.next_node }
        node.next_node = current_node.next_node
        current_node.next_node = node
    end

    def remove_at(index)
        return self.pop if self.size == index + 1
        current_node = @head
        (index - 1).times { current_node = current_node.next_node }
        current_node.next_node = current_node.next_node.next_node
    end
end
