class InsertionSort
  attr_accessor :unsorted_data,
                :sorted_data,
                :count

  def initialize
    @unsorted_data
    # @sorted_data
  end

  def sort(unsorted_data)
    @unsorted_data = unsorted_data
    @sorted_data = []
    sort_validation
  end

  def sort_validation
    if @sorted_data.empty?
    @sorted_data << @unsorted_data.shift
    sort_validation
    else
      return @sorted_data if @unsorted_data.count == 0
      item_removed = @unsorted_data.shift
      compare_items(item_removed)
    end
  end

  def compare_items(item_removed)
  n = sorted_data.select { |item| (item < item_removed)}.pop
    if n.nil?
      sorted_data.insert(0, item_removed)
    else
    index = sorted_data.index(n) + 1
    sorted_data.insert(index, item_removed)
    end
    sort_validation
  end

end
