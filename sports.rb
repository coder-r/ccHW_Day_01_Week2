# Part B
# Now we would like you to make a class that represents a sports team.

# Make a class to represent a Team that has the properties Team name (String), Players (array of strings) and a Coach (String).
class Team
  attr_reader :team_name, :player_names, :coach_name, :points

  def initialize (team_name, player_names, coach_name)
    @team_name = team_name
    @player_names = player_names
    @coach_name = coach_name
    @points = 0
  end

# For each property in the class make a getter method than can return them.

# def team_name
#   return @team_name
# end
#
# def player_names
#   return @player_names
# end
#
# def coach_name
#   return @coach_name
# end

# Create a setter method to allow the coach's name to be updated.

def set_coach_name(new_coach_name)
  @coach_name = new_coach_name
end


# Refactor the class to use attr_reader or attr_accessor instead of your own getter and setter methods.

##Done##

# Create a method that adds a new player to the players array.
def add_new_player(new_player)
  @player_names.push(new_player)
end



# Add a method that takes in a string of a player's name and checks to see if they are in the players array.
# def search_name_in_players(search_player)
#  for player in @player_names
#    if player == search_player
#      return true
#    else
#      return false
#    end
#  end
# end

def isPlayerInSquad (player)
  if @players.include?(player)
    return true
  end
# return @players.include?(player)
end


# Add a points property into your class that starts at 0.

###Done###

# Create a method that takes in whether the team has won or lost and updates the points property for a win

# def haswon(result)
#   @points += 3 if (result == "Win")
# end

def hasWon(result)
  if result == true
    @points += 3
  end
end

##Note: Use boolean as much as possible.

end
