# # require "pry"
# class LolChampionStats::Summoner
#   attr_accessor :champions_arr, :champs, :position_arr, :url_extension
#
#
#   def self.champion
#
#     self.scrape_champions
#   end
#
#   def self.scrape_champions
#     champions = []
#
#     champions << self.scrape_champion
#     # Go to na.op.gg to find the champion
#     # pull out the champion properties
#     # instantiate a champion with info
#     # Go on to the next champion
#
#     champions
#   end
#
#   def self.scrape_champion
#     doc = Nokogiri::HTML(open("https://na.op.gg/champion/statistics"))
#
#     champion = self.new
#     champions_arr = doc.search.css(".champion-index__champion-list").css(".champion-index__champion-item")
#     champs = champions_arr[0]
#     position_arr = doc.search.css(".champion-index__champion-item__position").map{|position| position.text}
#     url_extension = doc.search.css("a")[0].attribute['href'].value
#     champion
#     # binding.pry
#   end
# end

#champion -> name
#champion -> role [Top, Mid, Bot, Support, Jungle]
#champion -> origin (url)
# doc = Nokogiri::HTML(open("https://na.op.gg/champion/statistics"))
# champions_arr = doc.css(".champion-index__champion-list").css(".champion-index__champion-item")
# first_champ = champions_arr[0..144]
# url_extension = first_champ.css("a")[0].attributes['href'].value
# position_arr = first_champ.css(".champion-index__champion-item__position").map{|position| position.text}
# name = first_champ.css(".champion-index__champion-item__name").text
