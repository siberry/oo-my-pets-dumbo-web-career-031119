class Owner
  # code goes here
  @@all = []
  attr_reader :name, :species

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
    "I am #{@species}."
  end
    
end