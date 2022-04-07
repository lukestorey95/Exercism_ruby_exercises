class Matrix
  attr_accessor :string, :rows, :columns

  def initialize(string)
    @rows = string.split("\n").map { |array| array.split.map(&:to_i) }
    @columns = rows.transpose 
  end
end
