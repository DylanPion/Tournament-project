class Player < ApplicationRecord
  # Each player belongs to one team
  belongs_to :team

  # Validations to ensure data integrity
  validates :first_name, :last_name, :level, :role, presence: true

  ROLES = %w[top jungle mid bot support]

  validates :team, presence: true
  validates :role, presence: true, inclusion: { in: ROLES }
end