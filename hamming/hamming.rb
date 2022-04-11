class Hamming
  def self.compute(strand_1, strand_2)
    strand_1, strand_2 = strand_1.chars, strand_2.chars

    if strand_1.length != strand_2.length
      raise ArgumentError
    else
      count = 0

      strand_1.each_with_index do |c, i|
        c != strand_2[i] ? count += 1 : count
      end
      count
    end
  end
end