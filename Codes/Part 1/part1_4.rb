
class WrongNumberOfPlayersError < StandardError; end
class NoSuchStrategyError < StandardError; end

def rps_game_winner (*list)

	player1 = list[0].last.upcase
	player2 = list[1].last.upcase
	if(list.length != 2)
		raise WrongNumberOfPlayersError
		
	else
		if ( ("PRS".include? player1)  && ("SPR".include? player2)) 
			if( player1 == player2)
				return list[0]
			end

			if( player1 == "P" && player2 == "R")
				return list[0]
			end
			if( player1 == "R" && player2 == "S")
				return list[0]
			end
			if(player1 == "S" && player2 == "P")
				return list[0]
			end
			#Player 2 Wining Options
			if( player2 == "P" && player1 == "R")
				return list[1]
			end
			if( player2 == "R" && player1 == "S")
				return list[1]
			end
			if(player2 == "S" && player1 == "P")
				return list[1]
			end
		          	
		else
			raise NoSuchStrategyError
		end	
	end
end

def rps_match_winner(match)
  raise WrongNumberOfPlayersError unless match.length == 2
  rps_game_winner(match.fetch(0),match.fetch(1))
end

def rps_player?(rps)
   if rps.length == 2 and rps.fetch(1).length == 1
    true
  else
    false
  end
end

def rps_game?(game)
  rps_player?(game.fetch(0)) and rps_player?(game.fetch(1))
end

def rps_tournament_winner(tournament)
  if rps_player?(tournament)
    tournament
  elsif rps_game?(tournament)
    rps_tournament_winner(rps_match_winner(tournament))
  else
    rps_game_winner(rps_tournament_winner(tournament.fetch(0)),
               rps_tournament_winner(tournament.fetch(1)))
  end
end

#example

# winner = rps_tournament_winner [
# [
#   [ ["Kristen", "P"], ["Dave", "S"] ],
#   [ ["Adil", "R"], ["Michael", "S"] ]
# ],
# [
#   [ ["Allen", "S"], ["Omer", "P"] ],
#   [ ["David E.", "R"], ["Richard X.", "P"] ]
# ]
# ]

# puts winner.to_s