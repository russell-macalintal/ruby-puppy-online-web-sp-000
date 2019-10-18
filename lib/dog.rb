# Add your code here
class Dog
  @@all = []  #Class variable
  attr_reader :name  #Instance Variable

  def initialize(name)
    @name = name
    self.save
  end

  def self.all
    @@all
  end

  def self.print_all
    self.all.each do |dog|
      puts dog.name
    end
  end

  def self.clear_all
    # @@all = []
    self.all.clear
  end

  def save
    @@all << self
  end
end
