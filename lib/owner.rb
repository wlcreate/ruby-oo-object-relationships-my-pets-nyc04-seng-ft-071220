require 'pry'

class Owner

  attr_reader :name, :species, :cat, :dog
  @@all = []

  def initialize(name_par, species_par = "human")
    @name = name_par
    @species = species_par
    @@all << self
  end

  def say_species
    "I am a #{@species}."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
  end

  def cats
    Cat.all.select do |cat|
      cat.owner == self
    end
  end

  def dogs
    Dog.all.select do |dog|
      dog.owner == self
    end
  end

  def buy_cat(name)
    Cat.new(name, self)
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def walk_dogs
    self.dogs.select do |dog|
      dog.mood = "happy"
    end
  end

  def feed_cats
    self.cats.select do |cat|
      cat.mood = "happy"
    end
  end

  def all_pets
    pets = dogs + cats
  end

  def sell_pets
    self.all_pets.select do |pet|
      pet.mood = "nervous"
      pet.owner = nil
    end
  end

  def list_pets
    "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
  end

end