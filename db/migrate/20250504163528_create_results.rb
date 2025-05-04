class CreateResults < ActiveRecord::Migration[7.0]
  def change
    create_table :results do |t|
      t.references :match, null: false, foreign_key: true  # Link to the match
      t.integer :home_score, null: false  # Score of the home team
      t.integer :away_score, null: false  # Score of the away team

      t.timestamps
    end
  end
end
