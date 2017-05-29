class SearchController < ApplicationController
  def index
  	@params = params[:query]
    @search = Search.new(@params)
  end

end
