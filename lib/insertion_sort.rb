class InsertionSort
  attr_accessor :unsorted_data,
                :sorted_data,
                :count

  def initialize(unsorted_data)
    @unsorted_data = unsorted_data
    @sorted_data = []
  end

  def sort
    if @sorted_data.empty?
    @sorted_data << @unsorted_data.shift
    sort

    else
      if @unsorted_data.count == 0
        @sorted_data
      else
      item_removed = @unsorted_data.shift
      compare_items(item_removed)
    end
    end
  end

  def compare_items(item_removed)
  x = sorted_data.select { |item| (item < item_removed)}.pop
  if x.nil?
    sorted_data.insert(0, item_removed)
  else
  index = sorted_data.index(x) + 1
  sorted_data.insert(index, item_removed)
  end
  sort
end

end
