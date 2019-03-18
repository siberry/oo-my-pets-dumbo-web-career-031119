require 'pry'

class Owner
  # code goes here
  @@all = []
  attr_reader :species
  attr_accessor :name, :pets

  def initialize(species)
    @species = species
    @@all << self
    @pets = {:cats=>[], :dogs=>[], :fishes=>[]}
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
  
  def buy_fish(name)
    pets[:fishes] << Fish.new(name)
  end
  
  def buy_cat(name)
    pets[:cats] << Cat.new(name)
  end
  
  def buy_dog(name)
    pets[:dogs] << Dog.new(name)
  end
  
  def walk_dogs
    pets[:dogs].map {|dog| dog.mood = "happy" }
  end
  
  def play_with_cats
    pets[:cats].map {|cat| cat.mood = "happy" }
  end
  
  def feed_fish
    pets[:fishes].map {|fish| fish.mood = "happy" }
  end
  
  def sell_pets
    pets.each do |species,animals|
      animals.each do |animal|
        animal.mood = "nervous"
      end
      animals.clear
    end
  end
  
  def list_pets
    fish = pets[:fishes].count
    dogs = pets[:dogs].count
    cats = pets[:cats].count
    "I have #{fish} fish, #{dogs} dog(s), #{cats} cat(s)."
  end
    
end