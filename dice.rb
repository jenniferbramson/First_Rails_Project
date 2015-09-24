class Dice
	die1 = [1,2,3,4,5,6]
	die2 = [1,2,3,4,5,6]
		
	player1score = 0
	player2score = 0

	def dicegame
		def roll_dice(die1, die2)
			die1 = die1.shuffle
			die2 = die2.shuffle
			roll1 = die1[0]
			roll2 = die2[0]
			@rollresult = roll1 + roll2
		end

		roll_dice(die1,die2)
		player1 = @rollresult
		roll_dice(die1,die2)
		player2 = @rollresult

	
		if player1 > player2
			player1score += 1
			winmsg = "Player 1 wins!!!"
			scoremsg = "Player 1: #{player1score}" + "	" + "Player2: #{player2score}"
		elsif player1 < player2
			player2score += 1
			@winmsg = "Player 2 wins!!!"
			@scoremsg = "Player 1: #{player1score}" + "	" + "Player2: #{player2score}"
		else
			player1score += 1
			player2score += 1
			winmsg = "It was a tie!"
			scoremsg = "Player 1: #{player1score}" + "	" + "Player2: #{player2score}"
		end
	end
end