class Song < ActiveRecord::Base
   validates :name, presence: true, uniqueness: true
   #has_many :id, :class_name => "Game", :f 
   has_many :games
end
