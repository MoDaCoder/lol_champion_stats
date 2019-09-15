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
    @champion = LolChampionStats::Summoner.champion
    @champion.each.with_index(1) do |champion, i|
      puts "#{i}. #{champion.name} - #{champion.role}"
    end
  end

  def champion_select
    input = nil
    puts "Enter the number of the champ you would like to view or type list to start over or type exit to leave:"
    while input != "exit"
      input = gets.strip.downcase

      if input.to_i > 0
        puts @champion[input.to_i-1]
      elsif input == "list"
        list_champions

    else
      puts "!DO NOT BELIEVE THIS IS A GAME SUMMONER! Type list to continue or exit to leave."
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
