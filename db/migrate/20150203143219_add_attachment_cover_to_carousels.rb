class AddAttachmentCoverToCarousels < ActiveRecord::Migration
  def self.up
    change_table :carousels do |t|
      t.attachment :cover
    end
  end

  def self.down
    remove_attachment :carousels, :cover
  end
end
