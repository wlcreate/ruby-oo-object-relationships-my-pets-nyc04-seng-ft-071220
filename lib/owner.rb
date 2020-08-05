class Owner
  attr_reader :name, :species
  attr_accessor 

  def initialize(name_par, species_par = "human")
    @name = name_par
    @species = species_par
  end

  def say_species
    @species
  end

  def buy_cat(name)
  end

  def buy_dog
  end
end