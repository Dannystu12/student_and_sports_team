require ("minitest/autorun")
require ("minitest/rg")
require_relative ("../sports_team.rb")

class SportsTeamTest < MiniTest::Test

  def setup
    @sports_team = SportsTeam.new("Manchester United", ["Carrick", "Giggs", "Scholes"], "Ferguson")
  end

  def test_team_name
    assert_equal "Manchester United", @sports_team.name
  end

  def test_players
    assert_equal ["Carrick", "Giggs", "Scholes"], @sports_team.players
  end

  def test_coach
    assert_equal "Ferguson", @sports_team.coach
  end

  def test_set_coach
    @sports_team.coach = "Mourinho"
    assert_equal "Mourinho", @sports_team.coach
  end

  def test_add_player
    @sports_team.add_player "Beckham"
    assert_equal 4, @sports_team.players.size
  end

  def test_has_player__true
    assert_equal true, @sports_team.has_player?("Giggs")
  end

  def test_has_player__false
    assert_equal false, @sports_team.has_player?("Messi")
  end

  def test_play_game__win
    @sports_team.play_game "win"
    assert_equal 3, @sports_team.points
  end

  def test_play_game__draw
    @sports_team.play_game "draw"
    assert_equal 1, @sports_team.points
  end

  def test_play_game__loss
    @sports_team.play_game "loss"
    assert_equal 0, @sports_team.points
  end

end
