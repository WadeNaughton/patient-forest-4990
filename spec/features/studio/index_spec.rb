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
    movie = Movie.create!(title: "test movie", creation_year: 2020, genre: "Action", studio_id: studio.id)
    studio2 = Studio.create!(name: "New Studio", location: 'Delaware')
    movie2 = Movie.create!(title: "new movie", creation_year: 2020, genre: "Action", studio_id: studio2.id)

    visit "/studios"
    expect(page).to have_content(studio.name)
    expect(page).to have_content(studio.location)
    expect(page).to have_content(movie.title)
    expect(page).to have_content(studio2.name)
    expect(page).to have_content(studio2.location)
    expect(page).to have_content(movie2.title)
  
  end
end
