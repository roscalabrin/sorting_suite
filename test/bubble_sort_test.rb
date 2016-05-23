require './test/test_helper'
require './lib/bubble_sort'


class BubbleSortTest < Minitest::Test

  def test_that_bubble_sort_is_created_with_no_input
    sorter = BubbleSort.new

    assert sorter
  end

  def test_sorting_3_letters
    sorter = BubbleSort.new

    assert_equal [ "a", "b", "c"], sorter.sort([ "b", "a", "c"])
  end

  def test_sorting_4_letters
    sorter = BubbleSort.new

    assert_equal [ "a", "b", "c", "d" ], sorter.sort([ "d", "b", "a", "c"])
  end

  def test_sorting_capital_letters
    sorter = BubbleSort.new

    assert_equal [ "A", "B", "C", "D" ], sorter.sort([ "D", "A", "B", "C"])
  end

  def test_sorting_more_than_4_letters
    sorter = BubbleSort.new

    assert_equal [ "a", "b", "c", "d", "e", "f", "g", "h", "i" ], sorter.sort([ "a", "h", "c", "g", "f", "b", "d", "e", "i" ])
  end

  def test_sorting_words
    sorter = BubbleSort.new

    assert_equal [ "code", "hello", "turing" ], sorter.sort([ "hello", "turing", "code" ])
  end

  def test_sorting_numbers
    sorter = BubbleSort.new

    assert_equal [ 1, 2, 3, 4, 5, 6 ], sorter.sort([ 4, 1, 3, 6, 2, 5])
  end

  def test_sorting_with_duplicate_elements
    sorter = BubbleSort.new

    assert_equal [ "A", "A", "B", "C" ], sorter.sort([ "B", "C", "A", "A"])
  end

  def test_sorting_long_array_with_duplicate_elements
    sorter = BubbleSort.new

    assert_equal [ "a", "b", "b", "b", "c", "d", "e", "f", "f", "g", "h", "i" ], sorter.sort([ "f", "a", "h", "b", "c", "g", "f", "b", "d", "e", "i", "b" ])
  end

  def test_sorting_with_an_empty_string
    sorter = BubbleSort.new

    assert_equal [ "", "a", "b", "c", "d" ], sorter.sort([ "d", "b", "a", "", "c"])
  end

  def test_sorting_reverse_array
    sorter = BubbleSort.new

    assert_equal [1, 2, 3, 4, 5, 6], sorter.sort([6, 5, 4, 3, 2, 1])
  end

  def test_sorting_empty_array
    sorter = BubbleSort.new

    assert_equal [], sorter.sort([])
  end


end
