class SearchController < ApplicationController
  def index
    response = HTTParty.get("https://www.amazon.com/s/?url=search-alias%3Daps&field-keywords=hewy+lewis+and+the+news")

    dom = NOKOGIRI::HTML(response.body)
  end
end
