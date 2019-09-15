require "pry"
class LolChampionStats::Scraper
  attr_accessor :name, :role

  BASE_URL = "https://na.op.gg"

  def self.scrape_champion_stats
     index_page = BASE_URL + "/champion/statistics"

     doc = Nokogiri::HTML(open("https://na.op.gg/champion/statistics"))

     doc.css(".champion-index__champion-list").css(".champion-index__champion-item").each do |champion_css|
       name = champion_css.css(".champion-index__champion-item__name").text
       role = champion_css.css(".champion-index__champion-item__position").map{|position| position.text}

     binding.pry
  end
 end
end

require "nokogiri"
require "open-uri"

# # doc= Nokogiri::HTML(open("https://na.op.gg/champion/statistics"))
# champions_arr = doc.css(".champion-index__champion-list").css(".champion-index__champion-item")#All Champs √
# first_champ = champions_arr[0..144]
# url_extension = first_champ.css("a")[0].attributes['href'].value
# position_arr = first_champ.css(".champion-index__champion-item__position").map{|position| position.text}
# name = first_champ.css(".champion-index__champion-item__name").text
