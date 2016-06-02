module BookKeeping
  VERSION = 3
end

class Squares
    def initialize(num)
        @numbers = (0..num)
    end

    def square_of_sum
        (@numbers.reduce(:+))**2
    end

    def sum_of_squares
        @numbers.inject(0){|sum, i| sum + i**2}
    end

    def difference
        square_of_sum - sum_of_squares
    end
end