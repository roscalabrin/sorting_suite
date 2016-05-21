require './test/test_helper'
require './lib/insertion_sort'


class InsertionSortTest < Minitest::Test


def test_that_insertion_sort_can_hold_data
  sorter = InsertionSort.new ([ "d", "b", "a", "c"])

  assert_equal [ "d", "b", "a", "c"], sorter.unsorted_data
end

def test_that_creates_a_sorted_array
  sorter = InsertionSort.new ([ "d", "b", "c", "a"])
  binding.pry

  assert_equal [ "a", "b", "c", "d"], sorter.sorted_data
end

def test_that_creates_a_sorted_array
  sorter = InsertionSort.new ([ "d", "b", "c", "a"])
  binding.pry

  assert_equal [ "a", "b", "c", "d"], sorter.sorted_data
end




end
