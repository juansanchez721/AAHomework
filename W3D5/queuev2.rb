class Queue

    def initialize

        @queue = []
    end

    def enqueue(el)

        @queue << el


    end


    def dequeue

        @queue.shift
    end

    def peek
        @queue[0]
    end


end

test_queue = Queue.new

test_queue.enqueue("first")
test_queue.enqueue("in")
test_queue.enqueue("first")
test_queue.enqueue("out")


  p test_queue

    test_queue.dequeue
  p test_queue

  p test_queue.peek