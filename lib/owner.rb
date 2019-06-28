class Owner
  attr_reader :name

  @@all=[]

  def initialize(name)
    @name=name
    @@all<<self
  end

  def self.all
    @@all
  end

  def self.count
    self.all.count
  end

  def reset_all
    @@all.clear
  end

end
