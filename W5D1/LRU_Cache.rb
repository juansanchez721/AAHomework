class LRUCache
    
    def initialize(num)
        @lru = Array.new(num, nil)
    end

    def count
      # returns number of elements currently in cache
       @lru.count {|ele| ele != nil}
    end

    def add(el)
      if count == @lru.length
        @lru.shift
        @lru << nil
      end

      if @lru.include?(el)
        #  @lru.delete_at(@lru.index(el))
        @lru.each_with_index do |ele, i|
          if ele == el
            @lru[i] = @lru[i+1]
            @lru[i+1] = nil
          end
        end
      end

      if @lru[0] == nil
          @lru[0] = el
      elsif @lru[1] == nil
          @lru[1] = el
      elsif @lru[2] == nil
          @lru[2] = el
      elsif @lru[3] == nil
          @lru[3] = el
      end

    end

    def show
      # shows the items in the cache, with the LRU item first
      @lru
    end

    private
    # helper methods go here!

  end


  johnny_cache = LRUCache.new(4)

  johnny_cache.add("I walk the line")
  johnny_cache.add(5)

  p johnny_cache.count # => returns 2

  johnny_cache.add([1,2,3])
  johnny_cache.add(5)
  johnny_cache.add(-5)
  johnny_cache.add({a: 1, b: 2, c: 3})
  johnny_cache.add([1,2,3,4])
  johnny_cache.add("I walk the line")
  johnny_cache.add(:ring_of_fire)
  johnny_cache.add("I walk the line")
  johnny_cache.add({a: 1, b: 2, c: 3})

  p johnny_cache.count # => returns 4

  p johnny_cache.show # => prints [[1, 2, 3, 4], :ring_of_fire, "I walk the line", {:a=>1, :b=>2, :c=>3}]
