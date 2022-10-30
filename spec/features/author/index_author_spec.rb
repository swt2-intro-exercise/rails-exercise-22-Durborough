require 'rails_helper'

describe "Index Author page", type: :feature do
  it "should exist and render correctly" do
    @alan = FactoryBot.create :author
    visit authors_path
    
  end
  it "should have the correct text and links" do
    @alan = FactoryBot.create :author
    visit authors_path
    expect(page).to have_link 'New', href: new_author_path
  end
end