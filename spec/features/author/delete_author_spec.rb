require 'rails_helper'

describe "Delete possibility", type: :feature do
  it "should exist at authors index page and render withour error" do
    @alan = FactoryBot.create :author
    visit authors_path
    expect(page).to have_link 'Delete', href: author_path(@alan)
  end
  it "removes an author from the database" do
    @alan = FactoryBot.create :author
    expect { @alan.destroy }.to change { Author.count }.by(-1)
  end
end