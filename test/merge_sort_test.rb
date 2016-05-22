require './test/test_helper'
require './lib/merge_sort'

class MergeSort::DividetTest < Minitest::Test

  def test_that_merge_sort_is_created_with_no_input
    sorter = MergeSort.new

    binding.pry
    assert sorter
  end

  def test_sorting_letters
    # skip
    sorter = MergeSort.new

    assert_equal ["a", "b", "c", "d"], sorter.sort(["d", "b", "a", "c"])
  end

  def test_sorting_4_numbers
    # skip
    sorter = MergeSort.new

    assert_equal [ 1, 2, 3, 4 ], sorter.sort([ 3, 1, 4, 2 ])
  end

  def test_sorting_with_odd_number_of_elements
    sorter = MergeSort.new

    assert_equal [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11 ], sorter.sort([ 3, 1, 6, 9, 10, 4, 2, 8, 7, 5, 11 ])
  end

  def test_sorting_capital_letters
    sorter = MergeSort.new

    assert_equal [ "A", "B", "C", "D" ], sorter.sort([ "D", "A", "B", "C"])
  end

  def test_sorting_array_with_more_then_4_items
    sorter = MergeSort.new

    assert_equal [ "a", "b", "c", "d", "e", "f", "g", "h", "i" ], sorter.sort([ "a", "h", "c", "g", "f", "b", "d", "e", "i" ])
  end

end
