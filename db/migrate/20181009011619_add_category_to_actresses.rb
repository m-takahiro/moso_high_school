class AddCategoryToActresses < ActiveRecord::Migration
  def change
    add_column :actresses,:category,:string
  end
end
