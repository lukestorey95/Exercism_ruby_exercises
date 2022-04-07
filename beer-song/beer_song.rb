class BeerSong

  def self.verses(beers)
    if beers > 2
      "#{beers} bottles of beer on the wall, #{beers} bottles of beer.\nTake one down and pass it around, #{beers-1} bottles of beer on the wall.\n"
    elsif beers == 2
      "2 bottles of beer on the wall, 2 bottles of beer.\nTake one down and pass it around, 1 bottle of beer on the wall.\n"
    elsif beers == 1
      "1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n"
    else
      "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
    end
  end

  def self.recite(start, finish)
    (start..(start-finish+1)).step(-1).map do |beers|
      verses(beers)
    end
    .join("\n")
  end
end