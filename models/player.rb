require_relative "./team_data"
require "pry"

class Player
  attr_reader :team_name, :name, :position

  def initialize(name, position, team_name)
    @name = name
    @position = position
    @team_name = team_name
  end

  def self.all
    player_array = []
    TeamData::ROLL_CALL.each do |team_name, team_roster|
      team_roster.each do |player_position, player_name|
        new_player = Player.new(player_name, player_position, team_name)
        player_array << new_player
      end
    end
    player_array
  end
end
