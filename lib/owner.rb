require 'pry'

class Owner
  # code goes here
  @@all = []
  attr_reader :species
  attr_accessor :name

  def initialize(species)
    @species = species
    @@all << self
  end

  def self.all
    @@all
  end
  
  def self.count
    all.count
  end
  
  def self.reset_all
    @@all = []
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def pets
    {:cats=>[], :dogs=>[], :fishes=>[]}
  end
  
  def buy_fish(name)
    binding.pry
    pets[:fishes] << Fish.new(name)
  end
    
end