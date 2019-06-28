class Owner
  attr_reader :name, :species, :cats, :dogs

  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @cats=[]
    @dogs=[]
    @@all<<self
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def self.reset_all
    self.all.clear
  end

  def species
    @species
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_cat(name)
    @cats<<Cat.new(name, self)
  end

  def buy_dog(name)
    @dogs<<Dog.new(name, self)
  end

  def walk_dogs
    @dogs.each {|dog| dog.mood = "happy"}
  end


end
