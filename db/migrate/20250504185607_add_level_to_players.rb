class AddLevelToPlayers < ActiveRecord::Migration[8.0]
  def change
    add_column :players, :level, :string
  end
end
