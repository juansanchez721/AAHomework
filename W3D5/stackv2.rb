class Stack
    def initialize
        @stack = []
    end
  
    def push(el)
      @stack << el
    end
  
    def pop
      @stack.pop
    end
  
    def peek
      @stack[-1]
    end
  end 

    test_stack = Stack.new

    test_stack.push("first")
    test_stack.push("in")
    test_stack.push("last")
    test_stack.push("out")

    p test_stack
    # p test_stack.length

    test_stack.pop
    p test_stack  
    p test_stack.peek


