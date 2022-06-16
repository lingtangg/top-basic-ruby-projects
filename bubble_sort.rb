def bubble_sort(sort_array)
  # initialise a swap variable, default as true
  swap = true
  # while loop to go through the array
  while swap
    #set swap to false as it hasn't been swapped
    swap = false
    # loop through array to swap pairs if required
    (sort_array.length - 1).times do |x|
      if sort_array[x] > sort_array[x+1]
        sort_array[x], sort_array[x+1] = sort_array[x+1], sort_array[x]
        # values have been swapped so need to loop through again to check if any other changes required
        swap = true
      end
    end
  end
  sort_array
end

puts bubble_sort([4,3,78,2,0,2])
