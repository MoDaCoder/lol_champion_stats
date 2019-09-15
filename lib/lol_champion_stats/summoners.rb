class LolChampionStats::Summoner
  attr_accessor :name, :role, :url


  def self.champion
    champion_1 = self.new
    champion_1.name = "Aatrox"
    champion_1.role = "Top, Mid, Jungle"
    champion_1.url = "https://na.op.gg/champion/statistics"

    champion_2 = self.new
    champion_2.name = "Annie"
    champion_2.role = "Mid, Support"
    champion_2.url = "https://na.op.gg/champion/statistics"

    [champion_1, champion_2]
  end

end

#champion -> name
#champion -> role [Top, Mid, Bot, Support, Jungle]
#champion -> origin (url)
# doc = Nokogiri::HTML(open("https://na.op.gg/champion/statistics"))
# champions_arr = doc.css(".champion-index__champion-list").css(".champion-index__champion-item")
# first_champ = champions_arr[0..144]
# url_extension = first_champ.css("a")[0].attributes['href'].value
# position_arr = first_champ.css(".champion-index__champion-item__position").map{|position| position.text}
# name = first_champ.css(".champion-index__champion-item__name").text
