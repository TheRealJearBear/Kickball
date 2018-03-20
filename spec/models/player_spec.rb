require "spec_helper"

RSpec.describe Player do
let(:player) {Player.new("Matt", "RF", "Sharks") }

  describe ".new" do
    it "should take a name, position, and a team_name in the initializer" do
      expect(player).to be_a(Player)
    end
  end

  describe "#all" do
    it "should return an array of player objects" do
      expect(Player.all).to be_a(Array)
    end
  end
end
