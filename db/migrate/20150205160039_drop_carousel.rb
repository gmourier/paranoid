class DropCarousel < ActiveRecord::Migration
  def change
    drop_table :carousels
  end
end
