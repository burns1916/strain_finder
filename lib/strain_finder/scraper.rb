require 'nokogiri'
require 'pry'
require 'httparty'

class StrainFinder::Scraper

  def self.fetch_data
    url = 'http://strainapi.evanbusse.com/y4hQMu2/strains/search/all'
    resources = HTTParty.get(url)
    binding.pry
  end

end
