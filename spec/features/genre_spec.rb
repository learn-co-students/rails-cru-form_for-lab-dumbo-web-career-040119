require 'rails_helper'

describe 'navigate' do
  before do
    @genre = Genre.create(name: "My Genre")
  end

  it 'shows the name on the show page in a h1 tag' do
    visit "/genres/#{@genre.id}"
    expect(page).to have_css("h1", text: "My Genre")
  end

  it 'to genre pages' do
    visit "/genres/#{@genre.id}"
    expect(page.status_code).to eq(200)
  end
end
