#Our Cli Controller
class LolChampionStats::CLI

  def summon
    puts "Welcome Summoner to The League of Legends!"
    puts ""
    puts "Who shall you choose to be your Champion in the battle for the Rift?"
    puts ""
    puts "Choose one to view their strengths and their weaknesses."
    list_champions
    champion_select
    Scraper.scrape_champion_stats
  end

  def list_champions
    puts ""
    puts "1. Aatrox"
  end

  def champion_select
    puts ""
    puts "Enter the number of the champ you would like to view:"
  end
end
