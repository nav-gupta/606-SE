class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

# helper function to parse winner between two competing players
def rps_game_winner(game)
     raise WrongNumberOfPlayersError unless game.length == 2
# raising Error if players' strategies are not amongst the feasible one
     feasible_strategies = ["r", "p", "s"]
     given_strategies = [game[0][1].downcase, game[1][1].downcase]
     if (!feasible_strategies.include?(given_strategies[0]) || !feasible_strategies.include?(given_strategies[1]))
        raise NoSuchStrategyError
     end
#if they both employ different startegies, prioritizing..
     if given_strategies.include?("r") && given_strategies.include?("p")
            winner = given_strategies.index("p")
     elsif given_strategies.include?("r") && given_strategies.include?("s")
            winner = given_strategies.index("r")
     elsif given_strategies.include?("s") && given_strategies.include?("p")
            winner = given_strategies.index("s")
     else
#if same strategies, declaring first as the winner.
            winner = 0
     end
     return [game[winner][0], game[winner][1]]
end

def rps_tournament_winner(tournament)
    if tournament[0].kind_of?(String) && tournament[1].kind_of?(String)
        return tournament
    end
    player_1 = rps_tournament_winner(tournament[0])
    player_2 = rps_tournament_winner(tournament[1])
    return rps_game_winner([player_1, player_2])
end

tournament= [
[
[
  [ ["Kristen", "P"], ["Dave", "S"] ],
  [ ["Richard", "R"], ["Michael", "S"] ],
],
[
  [ ["Allen", "S"], ["Omer", "P"] ],
  [ ["David E.", "R"], ["Richard X.", "P"] ]
]
],
[
[
  [ ["Kristen1", "P"], ["Dave1", "S"] ],
  [ ["Richard1", "R"], ["Michael1", "S"] ],
],
[
  [ ["Allen1", "S"], ["Omer1", "P"] ],
  [ ["David E.1", "R"], ["Richard X.1", "P"] ]
]
]
]
puts rps_tournament_winner(tournament)
