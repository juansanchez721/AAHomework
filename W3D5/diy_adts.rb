require_relative "node"


class Stack
    attr_reader :length

    def initialize
      # create ivar to store stack here!
      @length = 0
      @head = nil
      @pointer = nil
      @linkedlist  = []
    end

    def push(el)
      # adds an element to the stack
        node = Node.new(el)
        @head = node if @length == 0
        @pointer = node
        @linkedlist << node
        @length += 1
    end

    def pop
      # removes one element from the stack
        @pointer = @linkedlist[-2]
        @linkedlist.pop
        @length -= 1
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      @ivar.peek
    end
  end

test_stack = Stack.new

  test_stack.push("first")
  test_stack.push("second")
  test_stack.push("third")

  p test_stack
  p test_stack.length

    test_stack.pop
  p test_stack  