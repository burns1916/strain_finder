require 'nokogiri'
require 'pry'
require 'httparty'

class StrainFinder::Scraper

  def self.fetch_all_strains
    url = 'http://strainapi.evanbusse.com/y4hQMu2/strains/search/all'
    resources = HTTParty.get(url)
    StrainFinder::Strains.new_from_collection(resources)
  end

  def self.fetch_strains_by_name(name)
    url = 'http://strainapi.evanbusse.com/y4hQMu2/strains/search/name/{#name}'
    resources = HTTParty.get(url)
    StrainFinder::Strains.new_from_collection(resources)
  end

  def self.fetch_strains_by_race(race)
    url = 'http://strainapi.evanbusse.com/y4hQMu2/strains/search/race/#{race}'
    resources = HTTParty.get(url)
    StrainFinder::Strains.new_from_collection(resources)
  end

  def self.fetch_strains_by_effect(effect)
    url = 'http://strainapi.evanbusse.com/y4hQMu2/strains/search/effect/{#effect}'
    resources = HTTParty.get(url)
    StrainFinder::Strains.new_from_collection(resources)
  end

  def self.fetch_strains_by_flavor(flavor)
    url = 'http://strainapi.evanbusse.com/y4hQMu2/strains/search/flavor/{#flavor}'
    resources = HTTParty.get(url)
    StrainFinder::Strains.new_from_collection(resources)
  end

end
