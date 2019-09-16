require "pry"
class CLI
  attr_accessor :name, :role
  def summon
    puts "Welcome Summoner to The League of Legends!"
    puts ""
    sleep 2
    puts "Who shall you choose to be your Champion in the battle for the Rift?"
    puts ""
    sleep 3
    Scraper.scrape_champion_stats
    champion_select
    # farewell
    # binding.pry
  end

  def champion_select
    Champions.all.each_with_index do |champion, index|
      puts "#{index + 1}. #{champion.name}".green
      end
      sleep 1
      puts "Choose your champion summoner by number to learn it's role."

      input = gets.chomp
      if input.to_i > Champions.all.size || input.to_i <= 0
        puts "DO NOT BELIEVE THIS IS A GAME SUMMONER. Please try again.".red
        sleep 3
        champion_select
      elsif
        input == "exit"
        farewell
      else
      champion = Champions.all[input.to_i - 1]
      puts "!!!You now summoned #{champion.name}!!!".light_blue.bold
      puts "#{champion.role}".yellow
      sleep 3
      champion_select
      end
    end


  def farewell
    puts ""
    puts "I see you have made your decision."
    puts ""
    puts "Farewell until the next battle summoner."
  end
end
