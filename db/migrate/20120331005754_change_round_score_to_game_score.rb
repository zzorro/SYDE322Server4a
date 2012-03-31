class ChangeRoundScoreToGameScore < ActiveRecord::Migration
  def up
    rename_column :user_games, :round_score, :game_score
  end

  def down
  end
end
