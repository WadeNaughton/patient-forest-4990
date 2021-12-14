require 'rails_helper'

RSpec.describe Movie, type: :model do
  describe 'relationships' do
    it { should belong_to(:studio) }
    it { should have_many(:actors).through(:movie_actors) }
  end

  it "lists actors oldest to youngest" do
    studio = Studio.create!(name: "wade studio", location: 'Maryland')
    movie = Movie.create!(title: "test movie", creation_year: 2020, genre: "Action", studio_id: studio.id)
    actor = movie.actors.create!(name: 'wade', age: 30)
    actor2 = movie.actors.create!(name: 'bob', age: 40)
    actor3 = movie.actors.create!(name: 'bob', age: 50)

  
  end
end
