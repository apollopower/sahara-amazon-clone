require 'httparty'
require 'nokogiri'

class UrlApi
  API_URL = 'https://www.amazon.com/s/?url=search-alias%3Daps&field-keywords=hewy+lewis+and+the+news'

  def unique_url
    response = HTTParty.get(API_URL)

    dom = Nokogiri::HTML(response.body)
  end
end
