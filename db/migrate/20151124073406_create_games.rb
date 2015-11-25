class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :p_score
      t.integer :d_score
      t.string :result
      t.integer :price

      t.timestamps null: false
    end
  end
end
