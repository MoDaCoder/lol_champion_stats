class CLI

  def run
    puts "Welcome Summoner!"
    puts ""
    puts "Who shall you choose to be your Champion?"
    puts ""
    puts "Choose one to view their strengths and their weaknesses."
    Scraper.scrape_champion_stats
  end

end
