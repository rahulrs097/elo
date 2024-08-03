class Player < ApplicationRecord
  belongs_to :user, optional: true
  has_and_belongs_to_many :teams
  has_many :scores, through: :teams
  has_many :games, through: :scores

  validates :name, presence: true
  validates :elo_rating, numericality: { only_integer: true }
end
