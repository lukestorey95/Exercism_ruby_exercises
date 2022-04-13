class SumOfMultiples
  def initialize(*divisors)
    @divisors = divisors
  end

  def to(num)
    arr = []
    @divisors.each do |div|
      arr << (1...num).each.select do |i|
        i % div == 0
      end
    end
    arr.flatten.uniq.sum
  end
end