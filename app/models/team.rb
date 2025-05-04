class Team < ApplicationRecord
  # A team has many players
  has_many :players, dependent: :destroy

  # A team can participate in many matches as home or away team
  has_many :home_matches, class_name: 'Match', foreign_key: 'home_team_id'
  has_many :away_matches, class_name: 'Match', foreign_key: 'away_team_id'

  # Validates presence of team name
  validates :name, presence: true, uniqueness: true

  validate :players_count_within_limit

  def players_count_within_limit
    if players.size > 5
      errors.add(:players, "Une équipe ne peut pas avoir plus de 5 joueurs.")
    end
  end
end
