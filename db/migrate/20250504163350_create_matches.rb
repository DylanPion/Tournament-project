class CreateMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :matches do |t|
      t.references :home_team, null: false, foreign_key: { to_table: :teams }  # Home team
      t.references :away_team, null: false, foreign_key: { to_table: :teams }  # Away team
      t.datetime :match_date, null: false  # Date and time of the match

      t.timestamps
    end
  end
end