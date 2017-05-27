class SearchController < ApplicationController
  def index
<<<<<<< HEAD
    response = HTTParty.get("https://www.amazon.com/s/?url=search-alias%3Daps&field-keywords=hewy+lewis+and+the+news")

    dom = NOKOGIRI::HTML(response.body)
=======
    @search = Search.new('laptops')
>>>>>>> 7c69df87d9f6b6b021fe733253f22b83c640224d
  end
end
