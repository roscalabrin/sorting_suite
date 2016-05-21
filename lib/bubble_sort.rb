
class BubbleSort
  attr_accessor :unsorted_data,
                :bubbling_iteration

  def initialize
    @bubbling_iteration
    @unsorted_data
  end

  def sort(unsorted_data)
    @unsorted_data = unsorted_data
    @bubbling_iteration = 1
    sort_2
  end

  def sort_2
    if @bubbling_iteration == unsorted_data.count
      return unsorted_data
    else
      sort_validation
    end
  end

  def sort_validation(counter = 0)
    if counter == (@unsorted_data.count - @bubbling_iteration)
      @bubbling_iteration += 1
      sort_2
    else
      compare_items(counter)
    end
  end

  def compare_items(counter)
  previous = @unsorted_data[counter]
  current = @unsorted_data[counter + 1]
    if previous > current
      @unsorted_data.delete(current)
      @unsorted_data.insert(counter, current)
    end
  counter += 1
  sort_validation(counter)
  end


end
