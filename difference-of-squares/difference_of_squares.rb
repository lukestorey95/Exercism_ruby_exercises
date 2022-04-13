=begin
The square of the sum of the first ten natural numbers is
(1 + 2 + ... + 10)² = 55² = 3025.

The sum of the squares of the first ten natural numbers is
1² + 2² + ... + 10² = 385.
=end

class Squares
  def initialize(num)
    @num = num
  end

  def square_of_sum
    (1..@num).sum ** 2
  end

  def sum_of_squares
    (1..@num).map { |n| n ** 2 }.sum
  end

  def difference
    square_of_sum - sum_of_squares
  end
end