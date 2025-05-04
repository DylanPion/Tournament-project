class Match < ApplicationRecord
  # Each match involves two teams: home and away
  belongs_to :home_team, class_name: 'Team'
  belongs_to :away_team, class_name: 'Team'

  # A match may have one result
  has_one :result, dependent: :destroy

  # Validation for the match date
  validates :match_date, presence: true

  validate :teams_are_ready

  def teams_are_ready
    if home_team.players.count < 1 || away_team.players.count < 1
      errors.add(:base, "Les deux équipes doivent avoir au moins 1 joueur pour programmer un match.")
    end
  end
end