class ChangeTypeOnContentToPages < ActiveRecord::Migration
  def change
    change_column :pages, :content, :text
  end
end
