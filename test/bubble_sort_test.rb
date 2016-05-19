require 'minitest/autorun'
require 'minitest/pride'
require './lib/bubble_sort.rb'
require 'pry'


class BubbleSortTest < Minitest::Test

  def test_sorter_exists
    sorter = BubbleSort.new([ 2, 0, 1, 3, 4, 5 ])
    assert_instance_of BubbleSort, sorter
  end

  def test_sorter_if_input_is_nil
    sorter = BubbleSort.new
    assert_instance_of BubbleSort, sorter
  end

  def test_sorting_numbers_in_the_array
    sorter = BubbleSort.new([ 2, 0, 1, 3, 4, 5 ])
    sorter.sort
    assert_equal [ 0, 1, 2, 3, 4, 5 ], sorter.sort
  end

  def test_sorting_letters_in_the_array
    sorter = BubbleSort.new([ "d", "b", "a", "c"])
    sorter.sort
    assert_equal [ "a", "b", "c", "d" ], sorter.sort
  end

  def test_sorting_lowercase_and_upcase_letters_in_the_array #not working
    sorter = BubbleSort.new([ "A", "c", "f", "B", "d", "E" ])
    sorter.sort
    assert_equal [ "A", "B", "c", "D", "E", "f" ], sorter.sort
  end

  def test_sorting_numbers_and_letters_in_the_array #not working
    skip
    sorter = BubbleSort.new([ "A", "C", "3", "B", "2", "1" ])
    sorter.sort
    assert_equal [ "A", "B", "c", "1", "2", "3" ], sorter.sort
  end

  def test_sorting_two_letters_in_the_same_element
    skip
    sorter = BubbleSort.new([ "A", "C", "3", "B", "2", "1" ])
    sorter.sort
    # assert_equal [ "A", "B", "c", "1", "2", "3" ], sorter.sort
  end

end
