class Anagram
  def initialize(word)
    @word = word.downcase
  end

  def match(possible_matches)
    possible_matches.reject! { |match| match.downcase == @word || match.rearrange != @word.rearrange }
    possible_matches
  end

end

class String
  def rearrange
    self.downcase.chars.sort.join
  end
end