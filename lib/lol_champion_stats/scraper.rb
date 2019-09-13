require "pry"
class Scraper

  BASE_URL = "https://na.op.gg"

  def self.scrape_champion_stats
     index_page = BASE_URL + "/champion/statistics"

     doc = Nokogiri::HTML(open("https://na.op.gg/champion/statistics"))


     binding.pry
  end

end


# require "nokogiri"
# require "open-uri"
#
# # doc= Nokogiri::HTML(open("https://na.op.gg/champion/statistics"))
# champions_arr = doc.css(".champion-index__champion-list").css(".champion-index__champion-item")
# #should be able to iterate through and grab needed info
# #gets champion from array
# first_champ = champions_arr[0]
# #gets the extension
# url_extension = first_champ.css("a")[0].attributes['href'].value
# #gets the role the champion will play
# position_arr = first_champ.css(".champion-index__champion-item__position").map{|position| position.text}
# #gets the name of the champion
# name = first_champ.css(".champion-index__champion-item__name").text
