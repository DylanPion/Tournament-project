class CreateTeams < ActiveRecord::Migration[7.0]
  def change
    create_table :teams do |t|
      t.string :name, null: false  # Name of the team

      t.timestamps
    end
  end
end
