class CreateMedia < ActiveRecord::Migration
  def change
    create_table :media do |t|
      t.string :title
      t.boolean :publish
      t.string :alt

      t.timestamps
    end
  end
end
