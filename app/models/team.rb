class Team < ApplicationRecord
    has_many :scores
    has_and_belongs_to_many :players
    validates :name, presence: true
end
