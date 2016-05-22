def sort(to_sort)
      # if the array is of length 0 or 1, consider it is already sorted
      if to_sort.length <= 2
          then return to_sort
      end

      # otherwise split the remaining elements in two
      # I had to look this line on the web (source refactormycode.com)
      second_array = to_sort.slice!((to_sort.length / 2.0).round..to_sort.length)

      # recursive method call on both arrays
      first_sorted_array = sort(to_sort)
      second_sorted_array = sort(second_array)

      p first_sorted_array

      # merge the two sorted arrays together
      # return merge(first_sorted_array, second_sorted_array)
  end

  def merge(first_array, second_array)
        # if either array is empty consider the other already sorted
        return second_array if first_array.empty?
        return first_array if second_array.empty?

        # remove the smallest element out of the two arrays
        if first_array.first <= second_array.first
            element = first_array.shift
        else
            element = second_array.shift
        end

        # recursive call to construct the merged array
        return [element] + merge(first_array, second_array)
    end





  def merge_sort(array, n)
    return array if n <= 2

    middle = array.length/2

    left = merge_sort(array[0...middle], n / 2)
    right = merge_sort(array[middle...n], n / 2)

    p left
  end

  array = [ 3, 1, 4, 2 ]
  array.size

  ary = [ 6, 3, 1, 4, 8, 2, 5, 7 ]
  new_ary = ary.partition { |item| ary.index(item) <= (ary.length/2) - 1}

  [],new_ary[0], 4

  def merge_sort(ary, array, n)
    return array if n <= 2
    ary << (array[0...n / 2], n / 2)
    left = merge_sort(array[0...n / 2], n / 2)
    p left
  end



  def merge_sort(array, n)
    return array if n <= 2
    left = merge_sort(array[0...n / 2], n / 2)
    right = merge_sort(array[n / 2...n], n / 2)

    p left
  end




end

# Divide.new([ 3, 1, 4, 2 ])
Divide.new([ 3, 1, 4, 2, 6, 7 ])
# Divide.new([ 6, 3, 1, 4, 8, 2, 5, 7 ])
