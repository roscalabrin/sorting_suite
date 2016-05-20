require './test/test_helper'
require './lib/bubble_sort'


class BubbleSortTest < Minitest::Test

  def test_the_sorter_can_hold_data
    sorter = BubbleSort.new([ "d", "b", "a", "c"])

    assert_equal [ "d", "b", "a", "c"], sorter.unsorted_data
  end


  def test_sorting_letters_in_the_array
    # skip
    sorter = BubbleSort.new([ "d", "b", "a", "c"])
    sorter.sort
    assert_equal [ "a", "b", "c", "d" ], sorter.sort
  end

  def test_sorting_capital_letters_in_the_array
    skip
    sorter = BubbleSort.new([ "D", "A", "B", "C"])

    binding.pry
    sorter.sort

    assert_equal [ "A", "B", "C", "D" ], sorter.sort
  end

  def test_sorting_lowercase_letters_in_the_array
    skip
    sorter = BubbleSort.new([ "a", "c", "f", "b", "d", "e" ])
    binding.pry
    sorter.sort
    assert_equal [ "a", "b", "c", "b", "e", "f" ], sorter.sort
  end

  def test_sorting_words_in_the_array
    skip
    sorter = BubbleSort.new([ "hello", "turing", "code" ])
    sorter.sort
    assert_equal [ "code", "hello", "turing" ], sorter.sort
  end

  def test_sorting_numbers_in_the_array
    skip
    sorter = BubbleSort.new([ 4, 1, 3, 6, 2, 5 ])
    sorter.sort
    assert_equal [ 1, 2, 3, 4, 5, 6 ], sorter.sort
  end

  def test_sorting_lowercase_and_upcase_letters_in_the_array #not working
    skip
    sorter = BubbleSort.new([ "A", "c", "f", "B", "d", "E" ])
    sorter.sort
    assert_equal [ "A", "B", "c", "D", "E", "f" ], sorter.sort
  end

  def test_sorting_numbers_and_letters_in_the_array #not working
    skip
    sorter = BubbleSort.new([ "A", "C", 3, "B", 2, 1 ])
    sorter.sort
    assert_equal [ "A", "B", "c", "1", "2", "3" ], sorter.sort
  end

end
