class Search < ApplicationRecord

  require 'nokogiri'

  attr_reader :dom, :title, :image, :price

  def initialize(params)

    @title = []
    @image = []
    @price = []

    production_app_id = "JonasErt-ItemsPul-PRD-d09141381-de141c97"
    url = "http://svcs.ebay.com/services/search/FindingService/v1"

    query_search = params.split(" ").join("%20")

    url += "?OPERATION-NAME=findItemsByKeywords"
    url += "&keywords=#{query_search}"
    url += "&SECURITY-APPNAME=" + production_app_id

    response = HTTParty.get url
    @dom = Nokogiri::HTML(response.body)

    list = @dom.css("title")
    list.each_with_index do |item, index|
      @title.push item.content
      @image.push @dom.css('galleryurl')[index].content
      @price.push  @dom.css('currentprice')[index].content
    end
  end

  # def titles
  #   output = ""
  #   list = @dom.css("title")
  #   list.each_with_index do |item, index|
  #     output += "<li>#{item.content}</li>"
  #     output += "<li>#{@dom.css('galleryurl')[index]}</li>"
  #     output += "<li>$#{@dom.css('currentprice')[index]}</li>"
  #   end
  #   output
  # end

end