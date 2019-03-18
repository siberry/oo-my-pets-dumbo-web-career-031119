class Owner
  # code goes here
  @@all = []
  attr_reader :name

  def initialize(arg)
    @@all << self
  end

  def self.all
    @@all
  end
    
end