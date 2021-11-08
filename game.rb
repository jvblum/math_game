class Game
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
    return answer
    # does not check if input is integer or not
    # string is converted to 0 which will always evaluate as wrong because the lowest possible sum is 2
  end
end