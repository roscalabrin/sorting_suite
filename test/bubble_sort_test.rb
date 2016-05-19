require 'minitest/autorun'
require 'minitest/pride'
require './lib/bubble_sort.rb'
require 'pry'


class BubbleSortTest < Minitest::Test

  def test_sorter_exists
    sorter = BubbleSort.new([ 2, 0, 1, 3, 4, 5 ])
    assert_instance_of BubbleSort, sorter
  end


  def test_sorting_with_different_array_sizes
    sorter = BubbleSort.new([ 2, 0, 1, 3, 4, 5 ])
      binding.pry
    sorter.sort
    assert_equal [ 0, 1, 2, 3, 4, 5 ], sorter.sort
  end

  def test_sorting_with_different_empty_array
  skip
  end

  def test_sorting_with_different_letters
  skip
  end

  def test_sorting_with_numbers_and_letters
  skip
  end


end
