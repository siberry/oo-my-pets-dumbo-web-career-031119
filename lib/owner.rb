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
    new_fish = Fish.new(name)
    self.pets[:fishes] << new_fish
  end
    
end