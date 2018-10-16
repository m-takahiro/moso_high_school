class AddImageNameToActresses < ActiveRecord::Migration
  def change
    add_column :actresses, :image_right_name, :string
    add_column :actresses, :image_left_name, :string
    add_column :actresses, :image_front_name, :string
    add_column :actresses, :image_back_name, :string
  end
end
