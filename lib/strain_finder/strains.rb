class StrainFinder::Strains

  attr_accessor :id, :name, :race, :flavor, :effect

  @@all = []

  def initialize(attributes)
    attributes.each {|k, v| self.send("#{k}=", v)}
    save
    binding.pry
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def find_by_race(race)
    all.find{|s| s.race == race}
  end

  def find_by_flavor(flavor)
    all.find{|s| s.flavor == flavor}
  end

  def find_by_effect(effect)
    all.find{|s| s.effect == effect}
  end

  def self.new_from_collection(strains)
    strains.each {|attributes| self.new(attributes)}
  end

end
