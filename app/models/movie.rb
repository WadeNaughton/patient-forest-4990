class Movie < ApplicationRecord
  belongs_to :studio
  has_many :movie_actors
  has_many :actors, through: :movie_actors
end

def oldest_youngest
  require "pry"; binding.pry
end
