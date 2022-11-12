require 'rails_helper'

describe "Author model", type: :model do
  it "should have a name and homepage" do
    first = 'Alan'
    last = 'Turing'
    homepage = 'http://wikipedia.org/Alan_Turing'
    name = 'Alan Turing'
    author = Author.new(first_name: first, last_name: last, homepage: homepage)
    expect(author.first_name).to eq(first)
    expect(author.last_name).to eq(last)
    expect(author.homepage).to eq(homepage)
    expect(author.name).to eq(name)
  end
  it "should have last name not nil" do
    last = 'Turing'
    @good_author = Author.new(first_name: nil, last_name: last, homepage: nil)
    expect(@good_author).to be_valid
    @bad_author = Author.new(first_name: nil, last_name: nil, homepage: nil)
    expect(@bad_author).to_not be_valid
  end
  it "should have papers relationship" do
    @valid_author = FactoryBot.create :author
    expect(@valid_author.papers).to be_empty
  end
end