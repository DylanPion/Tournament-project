class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.string :first_name, null: false   # Player's first name
      t.string :last_name, null: false    # Player's last name
      t.string :role, null: false         # Role (e.g. striker, defender)
      t.references :team, null: false, foreign_key: true  # Foreign key to team

      t.timestamps
    end
  end
end
