require('minitest/autorun')
require_relative('../sports.rb')

class TestTeam < MiniTest::Test

  def setup
    @team = Team.new("Glasgow Riders", ["Player 1"], "Tariq")

  end

  def test_team_name
    assert_equal("Glasgow Riders", @team.team_name)
  end

  def test_player_names
    assert_equal(["Player 1"], @team.player_names)
  end

  def test_coach_name
    assert_equal("Tariq", @team.coach_name)
  end

  def test_set_coach_name
    assert_equal("Pervaiz", @team.set_coach_name("Pervaiz"))
  end

  def test_add_new_player
    @team.add_new_player("Player 2")
    assert_equal(["Player 1", "Player 2"], @team.player_names)
  end

  def test_does_team_have_player
    result = @team.isPlayerInSquad


  # def test_search_name_in_players
  #   assert_equal(true, @team.search_name_in_players("Player 1"))
  # end
  #
  # def test_name_NOTin_players
  #   assert_equal(false, @team.search_name_in_players("Player 2"))
  end

  def test_points
   assert_equal(0, @team.points)
  end

  def test_team_win
      @team.haswon(true)
      assert_equal(3, @team.points)
  end

    # @team.add_match_results("Win")
    # assert_equal(3, @team.points)
  end


end
