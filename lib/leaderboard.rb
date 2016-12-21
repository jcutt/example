require 'pry'

class Leaderboard
GAME_INFO = [
    {
      home_team: "Patriots",
      away_team: "Broncos",
      home_score: 17,
      away_score: 13
    },
    {
      home_team: "Broncos",
      away_team: "Colts",
      home_score: 24,
      away_score: 7
    },
    {
      home_team: "Patriots",
      away_team: "Colts",
      home_score: 21,
      away_score: 17
    },
    {
      home_team: "Broncos",
      away_team: "Steelers",
      home_score: 11,
      away_score: 27
    },
    {
      home_team: "Steelers",
      away_team: "Patriots",
      home_score: 24,
      away_score: 31
    }
]

  def initialize(name, wins, losses)
    @name = name
    @wins = 0
    @losses = 0
  end

  def create_teams
    @teams = []
    GAME_INFO.each do |game|
      @teams << game[:home_team]
        unless @teams.include?(game[:away_team])
          @teams << game[:away_team]
        end
    end
  end

  def create_stats

  end
end
binding.pry
