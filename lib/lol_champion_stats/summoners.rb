class LolChampionStats::Summoner
  attr_accessor :name, :role, :origin


  def self.champion
    champion_1 = self.new
    puts champion_1.name = "1. Aatrox"
    champion_1.role = ["Top, Mid, Jungle"]
    champion_1.origin = "https://na.op.gg/champion/statistics"

    champion_2 = self.new
    puts champion_2.name = "2. Annie"
    champion_2.role = ["Mid, Support"]
    champion_2.origin = "https://na.op.gg/champion/statistics"
  end

end

#champion -> name
#champion -> role [Top, Mid, Bot, Support, Jungle]
#champion -> origin (url)
