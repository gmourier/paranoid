class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.string :content
      t.boolean :publish
      t.string :slug

      t.timestamps
    end
  end
end
