class AddIndexToSongAndGame < ActiveRecord::Migration
  def change
     add_index :songs, :name, unique: true
     add_index :games, :name, unique: true
    
  end
end
