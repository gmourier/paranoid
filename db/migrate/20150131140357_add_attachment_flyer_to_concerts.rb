class AddAttachmentFlyerToConcerts < ActiveRecord::Migration
  def self.up
    change_table :concerts do |t|
      t.attachment :flyer
    end
  end

  def self.down
    remove_attachment :concerts, :flyer
  end
end
