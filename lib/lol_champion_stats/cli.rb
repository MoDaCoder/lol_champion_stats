class CLI
  def summon
    puts "Welcome Summoner to The League of Legends!".light_blue.bold
    puts ""
    sleep 2
    puts "Who shall you choose to be your Champion in the battle for the Rift?".yellow.bold
    puts ""
    sleep 4
    Scraper.scrape_champion_stats
    print_list
    champion_select
    farewell
  end

  def champion_select
      puts "Choose your champion summoner by number to learn it's role or type list to view all champions again or exit to leave.".yellow.bold
      puts " "
      input = gets.chomp
      if input == "exit"
        farewell
      elsif input == "list"
        print_list
        champion_select
      elsif input.to_i - 1 <= Champions.all.size - 1 && input.to_i - 1 >= 0
        champion = Champions.all[input.to_i - 1]
        puts "!!!You now summoned #{champion.name}!!!".light_blue.bold
        puts "ROLES:"
        champion.role.each do |r|
          puts "   #{r}".yellow
        end
        puts " "
        sleep 6
        champion_select
      else
        puts "DO NOT BELIEVE THIS IS A GAME SUMMONER. Try again or type exit.".red.bold
        puts " "
        sleep 3
        champion_select
      end
    end

    def print_list
      Champions.all.each_with_index do |champion, index|
        puts "#{index + 1}. #{champion.name}".green
        sleep 0.009
      end
      puts " "
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
    sleep 0.5
    puts "Farewell until the next battle then summoner.".blue
    sleep 1
    exit
  end
end
