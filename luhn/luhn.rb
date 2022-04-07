class Luhn
  def self.valid?(string)
    string = string.gsub(/\s+/, "")
    return false if string.length <= 1
    return false if string.match(/\D/)

    digits = string.chars.map(&:to_i).reverse
    puts digits
    digits.map.with_index do |d, i|
      i.even? ? d : (d * 2 > 9 ? d*2-9 : d*2)
    end.sum % 10 == 0
  end
end