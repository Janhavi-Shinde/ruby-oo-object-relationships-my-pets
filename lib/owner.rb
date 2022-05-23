class Owner
  attr_reader :name, :species

  @@all = []
  @@cats = []
  @@dogs =[]
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end

  def say_species
     "I am a #{@species}."
  end
  
  def cats
    Cat.all.select do |instance| instance.owner == self
    end
  end 

  def dogs
    Dog.all.select do |instance| instance.owner == self
    # @@dogs << instance
    end
  
  end

  def buy_cat(name)
    cat = Cat.new(name, self)
    @@cats << cat
  end

  def buy_dog(name)
      dog = Dog.new(name, self)
      @@dogs << dog
    end

def walk_dogs
@@dogs.each do |instance| instance.mood = "happy"
end
  dogs.each do |instance| instance.mood = "happy"
end
end

def feed_cats
  @@cats.each do |instance| instance.mood = "happy"
  end
    cats.each do |instance| instance.mood = "happy"
  end
  end

  def sell_pets
    
      @@dogs.each do |instance| instance.mood = "nervous"
      instance.owner = nil
      end
        dogs.each do |instance| instance.mood = "nervous"
        instance.owner = nil
      end
    
        @@cats.each do |instance| instance.mood = "nervous"
          instance.owner = nil
        end
          cats.each do |instance| instance.mood = "nervous"
            instance.owner = nil
        end
        
  end

  def list_pets
    dog_count = dogs.size 
    cat_count = cats.size 
    "I have #{dog_count} dog(s), and #{cat_count} cat(s)."
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all = []

  end
end