require "pry"
class CLI
  attr_accessor :name, :role
  def summon
    puts "Welcome Summoner to The League of Legends!"
    puts ""
    sleep 2
    puts "Who shall you choose to be your Champion in the battle for the Rift?"
    puts ""
    sleep 4
    Scraper.scrape_champion_stats
    champion_select
    # farewell
    # binding.pry
  end

  def champion_select
    Champions.all.each_with_index do |champion, index|
      puts "#{index + 1}. #{champion.name}"
      end
      sleep 3
      puts "Choose your champion summoner by number to learn it's role."
      input = gets.chomp
      if input.to_i > Champions.all.size
        puts "DO NOT BELIEVE THIS IS A GAME SUMMONER. Please try again."
        champion_select
      end

      champion = Champions.all[input.to_i - 1]
      puts "You now summoned #{champion.name}!!!"
      puts champion.role
      sleep 3 
      champion_select
    end
end
#   def farewell
#     puts ""
#     puts "I see you have made your decision."
#     puts ""
#     puts "Farewell until the next battle summoner."
#   end
# end
