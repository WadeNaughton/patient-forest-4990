require 'rails_helper'

describe 'movie show page' do
  it ' ' do
    studio = Studio.create!(name: "wade studio", location: 'Maryland')
    movie = studio.movies.create!(title: "test movie", creation_year: 2020, genre: "Action")
  end
end
