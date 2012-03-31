class Game < ActiveRecord::Base
   validates :name, presence: true, uniqueness: true
   #belongs_to :song_id, :class_name => "Song", :foreign_key => 'id'
   belongs_to :song
end
