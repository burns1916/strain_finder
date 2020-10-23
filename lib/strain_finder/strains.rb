class StrainFinder::Strains

  attr_accessor :id, :name, :race, :flavor, :effects, :medicinal

  @@all = []

  def initialize(attributes)
    attributes.each {|k, v| self.send("#{k}", v)}
    save
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.new_from_collection(strains)
    strains.each {|attributes| self.new(attributes)}
  end

end
