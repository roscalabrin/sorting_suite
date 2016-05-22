require './test/test_helper'
require './lib/merge_sort'

class MergeSort::DivideTest < Minitest::Test

  def test_that_merge_sort_is_created_with_no_input
    sorter = MergeSort.new

    binding.pry
    assert sorter
  end

  def test_sorting_letters
    sorter = MergeSort.new

    assert_equal ["a", "b", "c", "d"], sorter.sort(["d", "b", "a", "c"])
  end

  def test_sorting_4_numbers
    sorter = MergeSort.new

    assert_equal [ 1, 2, 3, 4 ], sorter.sort([ 3, 1, 4, 2 ])
  end

end
