class AddSlugToConcerts < ActiveRecord::Migration
  def change
    add_column :concerts, :slug, :string
  end
end
