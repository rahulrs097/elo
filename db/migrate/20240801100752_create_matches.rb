class CreateMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :matches do |t|
      t.date :date
      t.string :tournament

      t.timestamps
    end
  end
end
