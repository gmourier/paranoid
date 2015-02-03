class CreateCarousels < ActiveRecord::Migration
  def change
    create_table :carousels do |t|
      t.string :title
      t.string :content
      t.boolean :publish

      t.timestamps
    end
  end
end
