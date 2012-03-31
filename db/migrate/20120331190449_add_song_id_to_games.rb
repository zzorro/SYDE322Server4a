class AddSongIdToGames < ActiveRecord::Migration
  def change
    add_column :games, :song_id, :integer
  end
end
