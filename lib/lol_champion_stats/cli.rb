class CLI
  attr_accessor :name, :role
  def summon
    puts "Welcome Summoner to The League of Legends!".light_blue.bold
    puts ""
    sleep 2
    puts "Who shall you choose to be your Champion in the battle for the Rift?".yellow.bold
    puts ""
    sleep 3
    Scraper.scrape_champion_stats
    champion_select
    farewell
  end

  def champion_select
    Champions.all.each_with_index do |champion, index|
      puts "#{index + 1}. #{champion.name}".green
      sleep 0.009
      end
      sleep 0.3
      puts "Choose your champion summoner by number to learn it's role.".yellow.bold
      # while input = gets.chomp != "exit" I NEED AN EXIT BUTTON 
      input = gets.chomp
      if input.to_i > Champions.all.size || input.to_i <= 0
        puts "DO NOT BELIEVE THIS IS A GAME SUMMONER. Please try again.".red.bold
        sleep 3
      end
      champion = Champions.all[input.to_i - 1]
      puts "!!!You now summoned #{champion.name}!!!".light_blue.bold
      puts "#{champion.role}".yellow
      sleep 3
      champion_select
    end

  def farewell
    puts "?!WHAT YOU THINK YOU CAN JUST LEAVE SUMMONER WITHOUT CHOOSING!?".red.bold
    sleep 3
    puts ""
    puts "Hmm... I see you have made your decision.".green
    sleep 3
    puts ""
    puts "Very well.".yellow
    puts ""
    puts "Farewell until the next battle then summoner.".blue
    sleep 1
  end
end
