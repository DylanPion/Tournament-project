class Result < ApplicationRecord
  # Each result belongs to a match
  belongs_to :match

  # Validations
  validates :home_score, :away_score, presence: true

  # Returns :draw, :home_win, or :away_win based on the score
  def outcome
    return :draw if home_score == away_score
    home_score > away_score ? :home_win : :away_win
  end
end
