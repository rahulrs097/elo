class Game < ApplicationRecord
  belongs_to :match
  has_many :scores
  has_many :teams, through: :scores
end
