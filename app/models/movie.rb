class Movie < ApplicationRecord
  has_many :actors
  validates :title, length: { minimum: 2 }
  validates :year, numericality: { greater_than: 1887 }
  validates :plot, length: { minimum: 5 }

end
