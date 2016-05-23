# require_relative 'bubble_sort'

module Benchmark

  def self.new
    SortingSuite.new
  end

  class SortingSuite
    include Benchmark

    def initialize(method, unsorted_data)
      @method = method
      @unsorted_data = unsorted_data
    end

    # def time
    #   BubbleSort.new([3,3,4,5,1])
    #
    # end
  # benchmark.time(SortingSuite::InsertionSort, [3,3,4,5,1])
  end


end


#
# benchmark = SortingSuite::Benchmark.new
# benchmark.time(SortingSuite::BubbleSort, [3,3,4,5,1])
