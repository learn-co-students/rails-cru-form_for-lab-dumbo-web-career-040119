require 'rails_helper'

describe 'navigate' do
  before do
    @artist = Artist.create(name: "My Artist", bio: "My artist bio")
  end

  it 'shows the name on the show page in a h1 tag' do
    visit "/artists/#{@artist.id}"
    expect(page).to have_css("h1", text: "My Artist")
  end

  it 'to artist pages' do
    visit "/artists/#{@artist.id}"
    expect(page.status_code).to eq(200)
  end

  it 'shows the bio on the show page in a p tag' do
    visit "/artists/#{@artist.id}"
    expect(page).to have_css("p", text: "My artist bio")
  end
end
