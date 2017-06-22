require 'nokogiri'
require 'open-uri'
#begin
html = open("http://google.com/#q=robots")

#rescue
#puts "This is screwing around with scraping"
#end

#puts "code continues"
#Nokogiri::HTML(html)
puts doc = Nokogiri::HTML(html)
