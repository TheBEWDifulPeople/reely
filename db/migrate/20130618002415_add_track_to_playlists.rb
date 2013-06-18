class AddTrackToPlaylists < ActiveRecord::Migration
  def change
    add_column :playlists, :track, :string
  end
end
