class Playlist < ActiveRecord::Base

	validates :title, :track, :mp3, presence: true
	validates :title, length: { minimum: 2, message: "is too short" }

	mount_uploader :track, TrackUploader

end
