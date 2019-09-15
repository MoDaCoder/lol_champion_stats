class LolChampionStats::Champions
  attr_accessor :name, :role


  @@all = []


  def initialize(name, role)
    @name = name
    @role = role

    @@all << self
  end


  def self.all
    @@all
  end
end
