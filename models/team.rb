require_relative "./team_data"
require_relative "player"
require 'pry'

class Team
attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.all
    team_array = []
    TeamData::ROLL_CALL.each do |team|
      team_array << team
    end
    team_array
  end

  def players
    roster = []
    players = Player.all
    players.each do |player|
      if player.team_name.to_s == @name
        roster << player
      end
    end
    roster
  end


end
