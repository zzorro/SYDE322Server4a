class CreateUserGames < ActiveRecord::Migration
  def change
    create_table :user_games do |t|
      t.integer :user_id
      t.integer :game_id
      t.integer :round_score
      t.boolean :isAdmin
      t.boolean :isWinner

      t.timestamps
    end
  end
end
