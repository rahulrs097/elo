class ChangeScorePlayerToTeam < ActiveRecord::Migration[7.0]
  def change
    remove_reference :scores, :player
    add_reference :scores, :team, null: false, foreign_key: true
  end
end
