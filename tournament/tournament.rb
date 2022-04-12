class Tournament
  def self.tally(input)
    @matches = input.split("\n")
    @teams = Hash.new

    calculate_scores
    sort_teams
    print_tally
  end

  def self.print_tally
    tally = ["Team                           | MP |  W |  D |  L |  P\n"]
    
    @teams.each do |name, team|
      tally << "#{name}#{" " * (31 - name.length)}|  #{team.matches} |  #{team.wins} |  #{team.draws} |  #{team.losses} |  #{team.points}\n"
    end
    tally.join("")
  end

  def self.sort_teams
    @teams = @teams.sort_by { |name, team| [-team.points, name]}
  end

  def self.calculate_scores
    @matches.map do |match| 
      team1, team2, result = match.split(";")
      
      create_teams(team1, team2)

      case result
      when "win"
        @teams[team1].won
        @teams[team2].lost
      when "draw"
        @teams[team1].tied
        @teams[team2].tied
      when "loss"
        @teams[team1].lost
        @teams[team2].won
      end
    end
  end

  def self.create_teams(*teams)
    teams.each do |team|
      if !@teams.key?(team)
        @teams[team] = Teams.new(team)
      else
        team
      end
    end
  end
end

class Teams
  attr_accessor :name, :wins, :draws, :losses

  def initialize(name)
    @name = name
    @wins = 0
    @draws = 0
    @losses = 0
  end

  def matches
    @wins + @draws + @losses
  end

  def points
    @wins * 3 + @draws
  end

  def won
    @wins += 1
  end

  def tied
    @draws += 1
  end
  
  def lost 
    @losses += 1
  end
end