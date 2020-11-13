require_relative "node"


class Map

     def initialize(matrix)

        @matrix = matrix


     end



    def set(key, value)
        if @matrix.flatten.include?(key)

                @matrix.each do |subarr|
                    if subarr[0] == key
                        subarr[1] = value
                    end
                end

        else
            @matrix << [key,value]
        end

    end

    def get(key)
     
        @matrix.each{ |arr| return arr[0] if arr[0] == key }
        return "no key found."
    end


    def delete(key)

        @matrix = @matrix.reject {|subarr| subarr[0] == key}

    end

    def show
        p @matrix
    end

end

my_map = [["k1", "v1"], ["k2", "v2"], ["k3", "v2"]]

mapmap = Map.new(my_map)
mapmap.set("k2", "2020")
mapmap.set("k4", "777")
p mapmap

p mapmap.delete("k4")
p mapmap

mapmap.show