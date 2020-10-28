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

  #def self.find_by_name(name)
    #all.find {|s| s.name == name}
  #end

  def self.select_by_race(race)
    race_array = all.select {|s| s.race == race}
    race_array.each {|strain| puts "#{strain.id}.""#{strain.name}"}
  end

  #def self.find_by_flavor(flavor)
    #all.find {|s| s.flavor == flavor}
  #end

  #def self.find_by_effect(effect)
    #all.find {|s| s.effects == effect}
  #end

  def self.new_from_collection(strains)
    strains.each {|attributes| self.new(attributes)}
  end

end
