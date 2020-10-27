class StrainFinder::Strains

  attr_accessor :id, :name, :race, :flavors, :effects

  @@all = []

  def initialize(attributes)
    @name = attributes[0]
    attributes[1].each {|k, v| self.send("#{k}=", v)}
    save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_by_name(name)
    all.find do |s| s.name == name
      puts s.name
    end
  end

  def self.find_by_race(race)
    all.find do |s| s.race == race
      puts s.name
    end
  end

  def self.find_by_flavor(flavor)
    all.find do |s| s.flavor == flavor
      puts s.name
    end
  end

  def self.find_by_effect(effect)
    all.find do |s| s.effects == effect
    puts s.name
    end
  end

  def self.new_from_collection(strains)
    strains.each {|attributes| self.new(attributes)}
  end

end
