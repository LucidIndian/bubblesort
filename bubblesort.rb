def bubble_sort (messyArray)
  puts "Unsorted start array: #{messyArray}."
  maxComparisons = messyArray.length - 1 # -1 to match # of comparisons needed 1st round
  indexMax = maxComparisons-1; # -1 to set the max index range for sortedArray
  until indexMax < 1 # we still want to run the program when i = 0, but stop when it's -1.  
    sortedArray = (0..indexMax).map do |index|
      # NOTE: If I don't change the array as I got through it, the comparisions will not be correct
      if messyArray[index] >= messyArray[index+1]
        #puts "switch em" # add 1 the index of the first num
        messyArray.insert(index+1, messyArray.delete_at(index))
      elsif messyArray[index] <= messyArray[index+1]
        #puts "keep em" # don't move the order
      else
        puts "error"
      end
    end
    indexMax -= 1
  end 
  puts "Bubble-sorted array: #{sortedArray[0]}" # there's still a 2D array, but this yields the target result
end 

bubble_sort([4,3,78,2,0,2])