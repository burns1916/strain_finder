require 'nokogiri'
require 'pry'
require 'httparty'

class StrainFinder::Scraper

  def self.fetch_strains
    url = 'http://strainapi.evanbusse.com/y4hQMu2/strains/search/all'
    resources = HTTParty.get(url)
    StrainFinder::Strains.new_from_collection(resources)
    binding.pry
  end

end
