require "sinatra"
require "pry" if development? || test?
require "sinatra/reloader" if development?

require_relative "models/player"
require_relative "models/team"
require_relative "models/team_data"

set :bind, '0.0.0.0'  # bind to all interfaces

get "/" do
  @team_list = TeamData::ROLL_CALL.keys.map { |team| team.to_s  }
  erb :index
end

get "/team/:team_name" do
  @team_name = params[:team_name]
  @team_name = @team_name.gsub("_"," ")
  @entry = Team.new(@team_name)
  @entry_players = @entry.players

  erb :team
end
