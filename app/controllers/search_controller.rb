class SearchController < ApplicationController
  def index
    @search = Search.new('laptops')
  end
end
