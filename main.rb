require './player'
require './game'

# init
player1 = Player.new 'Player 1'
player2 = Player.new 'Player 2'
game = Game.new 

# turn select; coin flip (0 || 1)
coin = Random.rand(2)
turn = coin > 0 ? player1 : player2

game.gen_problem
game.player_input

while (player1.dmg > 2 || player2.dmg > 2) do
  puts "#{turn.name}'s turn"

  solution = game.gen_problem
  answer = player_input()

  player1.dmg += 2
end

