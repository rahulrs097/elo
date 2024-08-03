class RemoveTeamIdFromPlayers < ActiveRecord::Migration[7.0]
  def change
    remove_reference :players, :team, foreign_key: true, index: true
  end
end
