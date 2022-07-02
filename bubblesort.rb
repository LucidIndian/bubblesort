def bubble_sort (messyArray)
  # 1st "Pass": Compare 1st and 2nd array items
  maxComparisons = messyArray.length - 1 # iterator (-1 to match indexes and 
      puts "maxComparisons #{maxComparisons}" 

    i = maxComparisons-1; # another -1 to stop comparison at 2nd last array item)
    until i == 0

      (0..i).map do |index|
        
        if messyArray[index] >= messyArray[index+1]
          puts "switch em" # add 1 the index of the first num
        elsif messyArray[index] <= messyArray[index+1]
          puts "keep em" # don't move the order
        else
          puts "error"
        end
      end
      i -= 1
    end
  
 
  # If 1st is greater, swap, else keep order
  # Shift comparison window one to the right (pos. 2 & 3), etc.
    # repeat until end of array
  # Start over, making 1 less comparision each pass (x passes = x #s sorted)
  # Check each time(pass) if it's sorted (sorted == no swaps)...
  #   or just run it the same # times as items in the collection
  # Return the sorted array

end

bubble_sort([4,3,78,2,0,2])

# NOTES: 
# can't use "sort" method  