class Playlist < ActiveRecord::Base

	validates :title, :mp3, :track, presence: true
	validates :title, length: { minimum: 2, message: "You title is too short" }

	mount_uploader :track, TrackUploader

end
