class ChangeLyricsToText < ActiveRecord::Migration
  def up
     change_column :songs, :lyrics, :text
  end

  def down
  end
end
