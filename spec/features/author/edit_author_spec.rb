require 'rails_helper'

describe "Edit author page", type: :feature do
  it "should exist at 'edit_author_path' and render withour error" do
    @alan = FactoryBot.create :author
    visit "/authors/#{@alan.id}/edit" 
    
  end
  it "should have text inputs for an author's first name, last name, and homepage" do
    @alan = FactoryBot.create :author
    visit "/authors/#{@alan.id}/edit" 
    # these are the standard names given to inputs by the Rails form builder
    expect(page).to have_field('author[first_name]')
    expect(page).to have_field('author[last_name]')
    expect(page).to have_field('author[homepage]')
    expect(page).to have_button('Update Author')
  end
end