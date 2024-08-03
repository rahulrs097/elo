class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.string :name, null: false
      t.references :user, null: true, foreign_key: true
      t.integer :elo_rating, default: 1500

      t.timestamps
    end
  end
end
