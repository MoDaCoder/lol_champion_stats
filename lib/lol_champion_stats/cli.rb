#Our Cli Controller
class LolChampionStats::CLI

  def summon
    puts "Welcome Summoner to The League of Legends!"
    puts ""
    puts "Who shall you choose to be your Champion in the battle for the Rift?"
    puts ""
    list_champions
    champion_select
    farewell
    Scraper.scrape_champion_stats
  end

  def list_champions
    # puts ""
    # puts "1. Aatrox"
    # puts "2. Annie"
    puts "Choose one to view their role in the Rift."
    @champions = LolChampionStats::Summoner.champion
  end

  def champion_select
    input = nil
    puts "Enter the number of the champ you would like to view or type list to start over or type exit to leave:"
    while input != "exit"
      input = gets.strip.downcase
      #
      # if input.to_i > 0
      #   puts @champions[input.to_i-1]
      # elsif input == "list"
      #   list_champions
    case input
    when "1"
      puts "Info on Champion 1."
    when "2"
      puts "Info on Champion 2."
    when "list"
    else
      puts "!DO NOT BELIEVE THIS IS A GAME SUMMONER! Type list to continue or leave."
    end
  end
end

  def farewell
    puts ""
    puts "I see you have made your decision."
    puts ""
    puts "Farewell until the next battle summoner."
  end
end
