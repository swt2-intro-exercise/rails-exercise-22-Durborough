require 'rails_helper'

describe "Show paper page", type: :feature do
  before :each do
    @paper = FactoryBot.create :paper
    visit paper_path(@paper)
  end

  it "should show the paper's attributes" do
    expect(page).to have_text(@paper.title)
    expect(page).to have_text(@paper.venue)
    expect(page).to have_text(@paper.year)
  end

  # Given a paper with an author
  # When a user visits the paper's show page
  # Then it should show the author's full name
  it "should list the authors" do
    expect(@paper.authors).to_not be_empty
    expect(page).to have_text(@paper.authors.first.name)
  end
end