require 'rails_helper'

describe "Show Author page", type: :feature do
  it "should exist and render correctly" do
    @alan = FactoryBot.create :author
    visit author_path(@alan)
    
  end
  it "should have the correct text for an author" do
    @alan = FactoryBot.create :author
    visit author_path(@alan)
    # these are the standard names given to inputs by the Rails form builder
    expect(page).to have_text('Alan')
    expect(page).to have_text('Turing')
    expect(page).to have_text('Alan Turing')
    expect(page).to have_text('http://wikipedia.de/Alan_Turing')
  end
end
