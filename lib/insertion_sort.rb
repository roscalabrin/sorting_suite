class InsertionSort
  attr_accessor :unsorted_data,
                :sorted_data,
                :count

  def initialize(unsorted_data)
    @unsorted_data = unsorted_data
    @sorted_data = ["a"]
    # @initial_count = 0
  end

  def sort
    @initial_count = @unsorted_data.count
    sort_remove_item
  end

  def sort_remove_item
    if @initial_count == @unsorted_data.count
    @sorted_data << @unsorted_data.shift
    sort_remove_item

    else
      if @unsorted_data.count == 0
        @sorted_data
      else
      item_removed = @unsorted_data.shift
      compare_items(item_removed)
    end
    end
  end

  def sort
    item_removed = @unsorted_data.shift
    compare_items(item_removed)
  end

  def compare_items(item_removed)
  x = sorted_data.select { |item| (item < item_removed)}.pop
  if x.nil?
    sorted_data.insert(0, item_removed)
  else
  index = sorted_data.index(x) + 1
  sorted_data.insert(index, item_removed)
  sort_remove_item
  end
end

end

# number = 3
# sorted_data = [ 1, 2, 4]
# a = sorted_data.select { |item| (item < number)}.pop
# if a.nil?
#   sorted_data.insert(0, number)
# else
# index = sorted_data.index(a) + 1
# sorted_data.insert(index, number)
# end
# s
#
#
#
#     i = 0
#     if item > number
#       sorted_data[i]
#   end
