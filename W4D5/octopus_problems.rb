

class Array

#['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
# => "fiiiissshhhhhh"

# Sluggish Octopus
# Find the longest fish in O(n^2) time. 
# Do this by comparing all fish lengths to all other fish lengths


        def sluggish_octopus
            
            start = 0
            long_fish = self[0]
            while start < self.length
                j = start+1
                while j < self.length
                    long_fish = self[j] if self[j].length > long_fish.length
                j += 1
                end
                start += 1
            end
            long_fish
        end

# Dominant Octopus
# Find the longest fish in O(n log n) time.
# Hint: You saw a sorting algorithm that runs in O(n log n) in the Sorting Complexity Demo. Remember that Big O is classified by the dominant term.

        def dominant_octopus



        end


# Clever Octopus
# Find the longest fish in O(n) time. 
# The octopus can hold on to the longest fish that you have found so far while stepping through the array only once.

        def clever_octopus
            longest_word = self.first
            self.each do |word|
                longest_word = word if word.length > longest_word.length
            end
            longest_word
        end

end

test_arr = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

p test_arr.sluggish_octopus

