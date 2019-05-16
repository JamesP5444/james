class HottestHotSauce::Sauce 
  attr_accessor :name, :description

  @@all = []

  def initialize
  end

# Class method to get all sauces
  def self.all
    @@all
  end

# Saves sauce objects into @@all.
  def save
    @@all << self
  end


end
