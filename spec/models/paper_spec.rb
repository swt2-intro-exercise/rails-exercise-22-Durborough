require 'rails_helper'

RSpec.describe Paper, type: :model do
  it "should have a title, venue and year" do
    title = "On Relativity"
    venue = "Berlin"
    year = 2021
    paper = Paper.new(title: title, venue: venue, year: year)
    expect(paper.title).to eq(title)
    expect(paper.venue).to eq(venue)
    expect(paper.year).to eq(year)
  end
  it "should have title, venue and year not nil" do
    @nil_paper = Paper.new(title: nil, venue: nil, year: nil)
    expect(@nil_paper).to_not be_valid
    @valid_paper = FactoryBot.create :paper
    expect(@valid_paper).to be_valid
  end
  it "should have numeric year" do
    title = "On Relativity"
    venue = "Berlin"
    year = "Year"
    invalid_paper = Paper.new(title: title, venue: venue, year: year)
    expect(invalid_paper).to_not be_valid
  end
end
