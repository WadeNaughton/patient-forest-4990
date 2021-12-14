require 'rails_helper'

describe 'studio index page' do
  it "I see each studios name and location" do
    studio = Studio.create!(name: "wade studio", location: 'Maryland')
    movie = studio.movies.create!(title: "test movie", creation_year: 2020, genre: "Action")
    visit "/studios"
    expect(page).to have_content(studio.name)
    expect(page).to have_content(studio.location)
  end
end
