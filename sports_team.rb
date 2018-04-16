class SportsTeam
  attr_reader :name, :players, :coach, :points
  attr_writer :coach

  def initialize name, players, coach
    @name = name
    @players = players
    @coach = coach
    @points = 0
  end

  def add_player player
    @players << player
  end

  def has_player? player
    @players.include? player
  end

  def play_game result
    case result.downcase
      when "win"  then @points += 3
      when "draw" then @points += 1
    end
  end


end
