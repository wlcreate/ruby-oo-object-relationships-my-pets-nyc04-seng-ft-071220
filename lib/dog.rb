require 'pry'
class Dog

  attr_accessor :owner, :mood, :name
  attr_reader 

  def initialize(name_par, mood_par, owner_par)
    @name = name_par
    @mood = mood_par
    @owner = owner_par
    #binding.pry
  end
end

#binding.pry
0