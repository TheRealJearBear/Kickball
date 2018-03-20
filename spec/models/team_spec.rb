require "spec_helper"

RSpec.describe Team do
  let(:team) {Team.new("Simpson Slammers") }

  describe ".new" do
    it "takes a name as an argument" do
      expect(team).to be_a(Team)
    end
  end

  describe "#name" do
    it "has a reader for #name" do
      expect(team.name).to eq("Simpson Slammers")
    end
    it "does not have a writer" do
      expect{team.name = "Dolphins"}.to raise_error(NoMethodError)
    end
  end

  describe "#all" do
    it "should return array of Team objects" do
      expect(Team.all).to be_a(Array)
    end
  end

  describe "#players" do
    it "returns an arry of Player objects" do
      expect(team.players).to be_a(Array)
    end
  end

end
