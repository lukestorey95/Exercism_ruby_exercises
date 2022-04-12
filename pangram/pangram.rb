class Pangram
  ALPHABET = 'abcdefghijklmnopqrstuvwxyz'
  def self.pangram?(sentence)
    sentence.downcase.scan(/[a-z]/).uniq.length == ALPHABET.length
  end
end