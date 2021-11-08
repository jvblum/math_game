class Player
  attr_accessor :mhp, :hp, :name
  def initialize name, mhp
    self.name = name
    self.mhp = mhp
    self.hp = self.mhp
  end
  def take_damage
    self.hp -= 1
  end
end