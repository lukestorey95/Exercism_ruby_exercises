class Isogram

  def self.isogram?(string)
    return true if string.empty?
    letters = string.downcase.chars.select{ |x| x[/\w/] }
    letters == letters.uniq
  end
end