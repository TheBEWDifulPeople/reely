class RemoveHashFromPlaylists < ActiveRecord::Migration
  def change
    remove_column :playlists, :hash, :string
  end
end
