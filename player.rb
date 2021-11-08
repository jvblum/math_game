class Player
  attr_accessor :hp, :dmg, :name
  def initialize name
    self.name = name
    self.hp = 3
    self.dmg = 0
  end
  def take_damage
    self.dmg += 1
  end
end