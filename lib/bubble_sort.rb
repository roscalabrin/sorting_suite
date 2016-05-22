class BubbleSort

  attr_accessor :unsorted_data,
                :bubbling_iteration

  def sort(unsorted_data)
    @unsorted_data = unsorted_data
    @bubbling_iteration = 1
    sort_validation
  end

  def sort_validation
    return unsorted_data if @bubbling_iteration == unsorted_data.count
    track_bubbling_process
  end

  def track_bubbling_process(counter = 0)
    if counter == (@unsorted_data.count - @bubbling_iteration)
      @bubbling_iteration += 1
      sort_validation
    else
      compare_items(counter)
    end
  end

  def compare_items(counter)
  previous = @unsorted_data[counter]
  current = @unsorted_data[counter + 1]
    if previous >= current
      @unsorted_data.delete_at(counter + 1)
      @unsorted_data.insert(counter, current)
    end
  counter += 1
  track_bubbling_process(counter)
  end

end
