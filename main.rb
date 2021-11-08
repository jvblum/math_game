require './player'
require './game'

# init
mhp = 3
p1 = Player.new('Player 1', mhp)
p2 = Player.new('Matt', mhp)
game = Game.new(p1, p2)

# # turn select; coin flip (0 || 1)
# coin = Random.rand(2)
# turn = coin > 0 ? p1 : p2
# game.turn_select

game.run
# loop do
#   puts "#{turn.name}'s turn"

#   solution = game.gen_problem
#   answer = game.player_input

#   # is the solution correct
#   turn.take_damage if !game.correct?(answer, solution)
#   # show scores
#   game.show_score
#   game.change_turn
#   # # change turn
#   # turn = turn == p1 ? p2 : p1
#   # end
#   if (p1.hp < 1 || p2.hp < 1)
#     # if terminated
#     puts "#{turn.name} wins"
#     puts '---GAME OVER---'
#     break
#   end
# end
