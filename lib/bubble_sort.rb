class BubbleSort
attr_accessor :unsorted_data

  def initialize(unsorted_data)
    @unsorted_data = unsorted_data
  end

  def sort (bubbling_iteration = 1)
    if bubbling_iteration == @unsorted_data.count - 1
      @unsorted_data
    else
      sort_validation(bubbling_iteration)
    end
  end

  def sort_validation(counter = 0, bubbling_iteration)
    if counter == @unsorted_data.count - bubbling_iteration
      bubbling_iteration += 1
      sort(bubbling_iteration)
    else
      compare_items(counter, bubbling_iteration)
    end
  end

  def compare_items(counter, bubbling_iteration)
  previous = @unsorted_data[counter]
  current = @unsorted_data[counter + 1]
    if previous > current
      @unsorted_data.delete(current)
      @unsorted_data.insert(counter, current)
    end
  counter += 1
  sort_validation(counter, bubbling_iteration)
  end


end
