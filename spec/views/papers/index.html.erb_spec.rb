require 'rails_helper'

describe "Index Paper page", type: :feature do
  before :each do
    @paper = FactoryBot.create :paper
    visit papers_path
  end
  it "should have the link to edit a paper" do
    expect(page).to have_link 'Edit this paper', href: "/papers/1/edit"
  end

  # Given a paper with an author
  # When a user visits the paper's show page
  # Then it should show the author's full name
  it "should list the authors" do
    expect(@paper.authors).to_not be_empty
    expect(page).to have_text(@paper.authors.first.name)
  end
end
