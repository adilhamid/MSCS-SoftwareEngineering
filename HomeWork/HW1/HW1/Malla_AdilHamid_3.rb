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
	end																# "Returning the Winnder and its corresponding Game Plan in an array"
	
end

#example
# p rps_game_winner(["Adil", "s"],["Nitina" , "S"])   
# p rps_game_winner(["Adil", "s"],["Nitina" , "S"],["aaa","S"])    

