require './player'
require './game'

# init
mhp = 3
p1 = Player.new('Player 1', mhp)
p2 = Player.new('Matt', mhp)
game = Game.new(p1, p2)

# game run
game.run