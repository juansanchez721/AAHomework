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
      if @length == 2 
        @pointer = @head
      elsif @length == 1
        # @head = nil
        @pointer= @head
      else
        @pointer = @linkedlist[-2]
      end
        @linkedlist.pop
        @length -= 1
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      @pointer
    end
  end

    test_stack = Stack.new

    test_stack.push("first")
    test_stack.push("in")
    test_stack.push("last")
    test_stack.push("out")

    p test_stack
    p test_stack.length

    test_stack.pop
    p test_stack  
    p test_stack.peek


