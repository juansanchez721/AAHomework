require_relative "node"


class Queue

  attr_reader :length
    def initialize

      @length = 0
      @head = nil
      @pointer = nil
      @linkedlist  = []

    end


    def enqueue(el)
        node = Node.new(el)
        @head = node if @length == 0
        @pointer = node
        @linkedlist << node
        @length += 1
    end


    def dequeue

      if @length == 1
          @head = nil
          @pointer = @head
      else
          @head = @linkedlist[1]  
      end
      @linkedlist.shift
          @length -= 1
    end

    def peek
      @head
    end



end

test_queue = Queue.new

test_queue.enqueue("first")
test_queue.enqueue("in")
test_queue.enqueue("first")
test_queue.enqueue("out")


  p test_queue
  p test_queue.length

  test_queue.dequeue
  p test_queue
  p test_queue.length

  p test_queue.peek

