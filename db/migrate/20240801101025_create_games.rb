class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.references :match, null: false, foreign_key: true
      t.integer :game_number

      t.timestamps
    end
  end
end
