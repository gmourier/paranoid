class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.string :name
      t.text :description
      t.datetime :show_at
      t.boolean :publish
      t.string :country
      t.string :city
      t.string :postal_code
      t.string :street
      t.string :lat
      t.string :long

      t.timestamps
    end
  end
end
