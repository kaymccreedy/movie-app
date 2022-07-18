class Movie < ApplicationRecord
  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres
  validates :title, length: { minimum: 2 }
  validates :year, numericality: { greater_than: 1887 }
  validates :plot, length: { minimum: 5 }

  def genre_names
    genre_array = []
    genres.each do |genre|
      genre_array << genre.name
    end
    p genre_array
  end


end
