class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :games_played
      t.integer :games_won
      t.integer :running_score

      t.timestamps
    end
  end
end
