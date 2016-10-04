class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

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

puts rps_game_winner([ [ "Kristen", "P" ], [ "Pam", "S" ] ])
# => returns the list ["Pam", "S"] wins since S>P
