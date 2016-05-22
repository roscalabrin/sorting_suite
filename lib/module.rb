module MergeSort

  def self.sort(unsorted_data)
    Divide.new(unsorted_data)
  end

  def final(sorted_data)
    p sorted_data
  end

end

  class Divide
    include MergeSort
    attr_accessor :unsorted_data,
                  :sorted_data

    def initialize(unsorted_data)
      @unsorted_data = unsorted_data
      @sorted_data = []
      divide_data
    end

    # def sort(unsorted_data)
    #   @unsorted_data = unsorted_data
    #   @sorted_data = []
    #   divide_data
    # end

    def divide_data
      new_ary = @unsorted_data.partition { |item| @unsorted_data.index(item) <= (@unsorted_data.length/2) - 1}
      compare_items(new_ary)
    end

    def compare_items(new_ary)
    new_ary.map do |item|
      if item[0] > item[1]
      item[0], item[1] = item[1], item[0]
      end
     end
     merge(new_ary)
    end

    def merge(new_ary)
      if new_ary.empty?
      final(sorted_data)
      # p @sorted_data
      else
        check_nested_array_empty(new_ary)
      end
    end

    def check_nested_array_empty(new_ary)
      if new_ary[0].empty?
        @sorted_data << new_ary[1]
        @sorted_data = @sorted_data.flatten
      elsif new_ary[1].empty?
          @sorted_data << new_ary[0]
          @sorted_data = @sorted_data.flatten
      else
      merging_items(new_ary)
      end
    end

    def merging_items(new_ary)
      if new_ary[0][0] < new_ary[1][0]
        @sorted_data << new_ary[0][0]
        new_ary[0].delete(new_ary[0][0])
      else
        if new_ary[0][0] > new_ary[1][0]
          @sorted_data << new_ary[1][0]
          new_ary[1].delete(new_ary[1][0])
        end
      end
      merge(new_ary)
    end

  end




sorter = MergeSort.sort(["d", "b", "a", "c"])
# sorter.sort(["d", "b", "a", "c"])
