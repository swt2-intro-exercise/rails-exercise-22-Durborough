require 'rails_helper'

RSpec.describe "papers/index", type: :view do
  before(:each) do
    assign(:papers, [
      Paper.create!(
        title: "Title",
        venue: "Venue",
        year: 2
      ),
      Paper.create!(
        title: "Title",
        venue: "Venue",
        year: 2
      )
    ])
  end

  it "renders a list of papers" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Title".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Venue".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(2.to_s), count: 2
  end
end

describe "Index Paper page", type: :feature do
  it "should exist and render correctly" do
    @aPaper = FactoryBot.create :paper
    visit papers_path
    
  end
  it "should have the link to edit a paper" do
    @aPaper = FactoryBot.create :paper
    visit papers_path
    expect(page).to have_link 'Edit this paper', href: "/papers/1/edit"
  end
end