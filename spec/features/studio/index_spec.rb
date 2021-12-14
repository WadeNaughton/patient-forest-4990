require 'rails_helper'

describe 'studio index page' do
  it "I see each studios name and location" do
    studio = Studio.create!(name: "wade studio", location: 'Maryland')
    movie = studio.movies.create!(title: "test movie", creation_year: 2020, genre: "Action")
    visit "/studios"
    expect(page).to have_content(studio.name)
    expect(page).to have_content(studio.location)
  end

  it "underneath each studio I see their movies" do
    studio = Studio.create!(name: "wade studio", location: 'Maryland')
    movie = studio.movies.create!(title: "test movie", creation_year: 2020, genre: "Action")
    studio2 = Studio.create!(name: "New Studio", location: 'Delaware')
    movie2 = studio2.movies.create!(title: "new movie", creation_year: 2020, genre: "Action")
    
    visit "/studios"
    expect(page).to have_content(studio.name)
    expect(page).to have_content(studio.location)
    expect(page).to have_content(movie.title)
    save_and_open_page
  end
end
