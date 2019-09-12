require "pry"
require "nokogiri"
require "open-uri"

doc= Nokogiri::HTML(open("https://na.op.gg/champion/statistics"))
champions_arr = doc.css(".champion-index__champion-list").css(".champion-index__champion-item")
#should be able to iterate through and grab needed info
first_champ = champions_arr[0]
url_extension = first_champ.css("a")[0].attributes['href'].value
position_arr = first_champ.css(".champion-index__champion-item__position").map{|position| position.text}
name = first_champ.css(".champion-index__champion-item__name").text

binding.pry
