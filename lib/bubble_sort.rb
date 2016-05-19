class BubbleSort
attr_accessor :previous, :current, :unsorted_array

  def initialize(unsorted_array)
    @unsorted_array = unsorted_array
    @previous
    @current
  end

  def sort(counter = 0)
  @previous = unsorted_array[counter]
  @current = unsorted_array[counter + 1]
  count = unsorted_array.count - 1
    if previous == unsorted_array[count]
      p @unsorted_array
    else
      if previous > current
        unsorted_array.delete(current)
        @unsorted_array = unsorted_array.insert(counter, current)
      end
      counter = counter += 1
      sort(counter)
    end
  end


end
