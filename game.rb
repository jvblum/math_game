class Game
  attr_accessor :p1, :p2, :turn
  def initialize p1, p2
    self.p1 = p1
    self.p2 = p2
    self.turn = self.p1
  end
  def gen_problem
    prng = Random.new
    a = prng.rand(1..20)
    b = prng.rand(1..20)
    puts "What does #{a} plus #{b} equal?"
    a + b
  end
  def player_input
    print "=> "
    answer = $stdin.gets.chomp.to_i
    answer
    # does not check if input is integer or not
    # string is converted to 0 which will always evaluate as wrong because the lowest possible sum is 2
  end
  def correct? answer, solution
    result = answer == solution
    puts result ? "!RIGHT!" : "!WRONG!"
    result
  end
  def show_score
    puts "#{self.p1.name}: #{self.p1.hp}/#{self.p2.mhp} | #{self.p2.name}: #{self.p2.hp}/#{self.p2.mhp}"
  end
  def end?
    result = self.p1.hp < 1 || self.p2.hp < 1
    if (result)
      puts "#{self.turn.name} wins"
      puts '---GAME OVER---'
    end
    result
  end
  def change_turn
    self.turn = self.turn == self.p1 ? self.p2 : self.p1
  end
  def turn_select
    # turn select; coin flip (0 || 1)
    coin = Random.rand(2)
    self.turn = coin > 0 ? self.p1 : self.p2
  end
  def run
    turn_select
    loop do
      puts "#{turn.name}'s turn"
      solution = self.gen_problem
      answer = self.player_input

      self.turn.take_damage if !correct?(answer, solution)
      show_score
      change_turn
      break if end?
    end
  end
end