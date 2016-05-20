class BubbleSort
attr_accessor :unsorted_data,
              :previous,
              :current

  def initialize(unsorted_data)
    @unsorted_data = unsorted_data
  end

  def sort
    string_array = unsorted_data.select { |item| item.is_a? String}
    if string_array.count == unsorted_data.count
      sort_part_2
    else "method to sort numbers and strings"
    end
  end

  # def sort_numbers(unsorted_data)
  #   numbers_array = unsorted_data.select { |item| item.is_a? Numeric}
  #   if numbers_array.count == unsorted_data.count
  #     sort_algorithm
  #   else "test"
  #   end
  # end

  def sort_part_2(counter = 0)
  @previous = unsorted_data[counter]
  @current = unsorted_data[counter + 1]
    if previous == unsorted_data[unsorted_data.count - 1]
      unsorted_data
    else
      if previous > current
        unsorted_data.delete(current)
        @unsorted_data = unsorted_data.insert(counter, current)
      end
      counter += 1
      sort_part_2(counter)
    end
  end

  # def validate_final_answer
  #
  # end



end
#
#
# a = [ "A", "C", "D", "B", "F", "E" ]
# a.map{ |item| item.is_a? String}
# if all true # same workflow
#
# if not split in 2 arrays and then merge numeric first
#
#   a = [ "A", "C", 3, "B", 2, 1 ]
#   b = a.select { |item| item.is_a? String}
#
#   a = [ "A", "C", 3, "B", 2, 1 ]
#   a.select { |item| item.is_a? Numeric}
