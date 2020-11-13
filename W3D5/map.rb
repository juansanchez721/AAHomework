require_relative "node"


class Map

     def initialize(matrix)

        @matrix = matrix


     end



    def set(key, value)


    end

    def get(key)
     
        @matrix.each{ |arr| 
    
        if arr[0] == key
            return true
        end
        
    }


    end


    def delete(key)


    end

    def show

    end

end

my_map = [["k1", "v1"], ["k2", "v2"], ["k3", "v2"]]

mapmap = Map.new(my_map)
p mapmap.get("k2")