class Actor < ApplicationRecord
  belongs_to :movie
  validates :first_name, length: { minimum: 2 }
  validates :last_name, length: { minimum: 2 }
  validates :known_for, presence: true
  validates :age, numericality: { greater_than: 12 }

  def actor
    actor = Actor.find_by(id: params["id"])      
  end

end
