class Scrabble

  LETTER_VALUES = {
    /[AEIOULNRST]/ => 1,
    /[DG]/ => 2,
    /[BCMP]/ => 3,
    /[FHVWY]/ => 4,
    /[K]/ => 5,
    /[JX]/ => 8,
    /[QZ]/ => 10
  }

  def initialize(word)
    @word = word.to_s.upcase.strip
  end

  def self.score(word)
    new(word).score
  end

  def score
    word_score = 0

    LETTER_VALUES.inject(0) do |word_score, (letters, value)| word_score += (@word.scan(letters).count * value)
    end
  end
end