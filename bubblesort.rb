def bubble_sort (messyArray)
  puts "Unsorted start array: #{messyArray}."
  maxComparisons = messyArray.length - 1 # -1 to match # of comparisons needed 1st round
  indexMax = maxComparisons-1; # -1 to set the max index range for sortedArray
  until indexMax < 1
    sortedArray = (0..indexMax).map do |index|
      if messyArray[index] >= messyArray[index+1]
        messyArray.insert(index+1, messyArray.delete_at(index))
      else
        # do nothing! Keep them as is
      end
    end
    indexMax -= 1
  end 
  puts "Bubble-sorted array: #{sortedArray[0]}" # there's still a 2D array, but this yields the target result
end 

bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]