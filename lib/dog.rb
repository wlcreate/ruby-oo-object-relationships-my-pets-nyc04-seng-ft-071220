require 'pry'
class Dog

  attr_accessor :owner, :mood
  attr_reader :name

  @@all = []

  def initialize(name_par, owner_par)
    @name = name_par
    @owner = owner_par
    @mood = "nervous"
    @@all << self
  end

  def self.all
    @@all
  end

end

#binding.pry
0