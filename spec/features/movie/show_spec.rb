require 'rails_helper'

describe 'movie show page' do
  it 'I see movies title, creation year, and genre, ' do
    studio = Studio.create!(name: "wade studio", location: 'Maryland')
    movie = Movie.create!(title: "test movie", creation_year: 2020, genre: "Action", studio_id: studio.id)
    actor = movie.actors.create!(name: 'wade', age: 30)
    actor2 = movie.actors.create!(name: 'bob', age: 40)
    actor3 = movie.actors.create!(name: 'bob', age: 50)

    visit "/movies/#{movie.id}"

    expect(page).to have_content(movie.title)
    expect(page).to have_content(movie.creation_year)
    expect(page).to have_content(movie.genre)

  end

end
