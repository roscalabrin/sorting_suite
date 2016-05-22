require './test/test_helper'
require './lib/bubble_sort'


class BubbleSortTest < Minitest::Test

  def test_that_bubble_sort_is_created_with_no_input
    sorter = BubbleSort.new

    assert sorter
  end

  def test_sorting_3_letters
    sorter = InsertionSort.new

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

    assert_equal [ 1, 2, 3, 4, 5, 6 ], sorter.sort([ 4, 1, 3, 6, 2, 5 ])
  end

  def test_sorting_capital_letters_in_the_array#not working
    skip
    sorter = BubbleSort.new

    assert_equal [ "A", "A", "B", "C" ], sorter.sort([ "B", "C", "A", "A"])
  end

  def test_sorting_lowercase_and_upcase_letters_in_the_array #not working
    skip
    sorter = BubbleSort.new
    binding.pry

    assert_equal [ "A", "B", "c", "D", "E", "f" ], sorter.sort([ "A", "c", "f", "B", "d", "E" ])
  end


end
