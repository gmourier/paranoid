class ChangeReleaseDateToReleasedAtOnAlbums < ActiveRecord::Migration
  def change
    rename_column :albums, :release_date, :released_at
  end
end
