class TwelveDays
  GIFTS =[
    "a Partridge in a Pear Tree.",
    "two Turtle Doves, and ",
    "three French Hens, ",
    "four Calling Birds, ",
    "five Gold Rings, ",
    "six Geese-a-Laying, ",
    "seven Swans-a-Swimming, ",
    "eight Maids-a-Milking, ",
    "nine Ladies Dancing, ",
    "ten Lords-a-Leaping, ",
    "eleven Pipers Piping, ",
    "twelve Drummers Drumming, "
  ]

  DAYS = [
    "first",
    "second",
    "third",
    "fourth",
    "fifth",
    "sixth",
    "seventh",
    "eighth",
    "ninth",
    "tenth",
    "eleventh",
    "twelfth"
  ]

  def self.song
    day = 0
    song = []
    until day == 12 do 
      song << "On the #{DAYS[day]} day of Christmas my true love gave to me: #{GIFTS[0..day].reverse.join}\n"
      day += 1
    end
    song.join("\n")
  end
end

TwelveDays.song