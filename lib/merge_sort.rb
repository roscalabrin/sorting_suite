module MergeSort

  def self.new
    Sort.new
  end

  def sort(unsorted_data)
    @unsorted_data = unsorted_data
    @sorted_data
    divide_data(unsorted_data)
  end

  class Sort
  include MergeSort
  attr_accessor :unsorted_data

    def divide_data(unsorted_data)
      n = unsorted_data.count
      return unsorted_data if n <= 1 # base case to stop recursion

      left_side = divide_data(unsorted_data[0...n/2])
      right_side = divide_data(unsorted_data[n/2...n]) #right side is bigger if odd

      merge_items(left_side, right_side)
    end

    def merge_items(left_side, right_side)
    @sorted_data = []

      while left_side.empty? == false && right_side.empty? == false
        if left_side[0] <= right_side[0]
          @sorted_data << left_side[0]
          left_side.delete_at(0)
        else
          if left_side[0] > right_side[0]
            @sorted_data << right_side[0] #add to the sorted array
            right_side.delete_at(0)
          end
        end
      end
      check_for_empty_sides(right_side, left_side)
    end

    def check_for_empty_sides(right_side, left_side)
      if right_side.empty?
        @sorted_data << left_side
        @sorted_data = @sorted_data.flatten
      elsif left_side.empty?
          @sorted_data << right_side
          @sorted_data = @sorted_data.flatten
      else
        @sorted_data
      end
    end


  end


end
