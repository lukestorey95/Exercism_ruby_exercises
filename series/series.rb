class Series
  def initialize(string)
    @array = string.chars
  end

  def slices(x)
    x > @array.length ? (raise ArgumentError) : @array.each_cons(x).map {|a| a.join}
  end
end