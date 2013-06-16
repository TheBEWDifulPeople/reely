class Playlist < ActiveRecord::Base

	validates :title, :mp3, presence: true
	validates :title, length: { minimum: 2, message: "You title is too short" }

end
