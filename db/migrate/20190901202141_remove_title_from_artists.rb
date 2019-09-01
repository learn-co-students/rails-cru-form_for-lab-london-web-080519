class RemoveTitleFromArtists < ActiveRecord::Migration[5.0]
  def change
    remove_column :artists, :title, :string
  end
end
