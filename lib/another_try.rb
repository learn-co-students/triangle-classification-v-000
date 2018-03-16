require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("https://google.com/"))
# puts doc #=> we don't need to see the webpage for now.
puts doc.css("center").text
