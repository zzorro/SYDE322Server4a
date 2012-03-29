class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.boolean :open

      t.timestamps
    end
  end
end
