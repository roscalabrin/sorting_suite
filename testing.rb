

a = [ "d", "b", "a", "c"]
b = [ "a", "h","c", "g", "f", "b", "d", "e", "i" ]
c = [ 4, 1, 3, 6, 2, 5 ]
d = [ "A", "c", "f", "B", "d", "E" ]


def sort(counter = 0)
previous = unsorted_data[counter]
current = unsorted_data[counter += 1]
  if counter == unsorted_data.count
    unsorted_data
  else
    if previous > current
      unsorted_data.delete(current)
      unsorted_data = unsorted_data.insert(counter, current)
    end
    counter += 1
    sort(counter)
  end
end


class BubbleSort
attr_accessor :unsorted_data

  def initialize(unsorted_data)
    @unsorted_data = unsorted_data
  end

  def sort(counter = 0)
    if counter == @unsorted_data.count - 1
      @unsorted_data
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
  sort(counter)
  end


end
