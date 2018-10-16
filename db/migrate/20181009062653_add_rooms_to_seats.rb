class AddRoomsToSeats < ActiveRecord::Migration
  def change
    add_column :rooms, :seat_0_1, :integer
    add_column :rooms, :seat_1_1, :integer
    add_column :rooms, :seat_1_2, :integer
    add_column :rooms, :seat_1_3, :integer
    add_column :rooms, :seat_1_4, :integer
    add_column :rooms, :seat_1_5, :integer
    add_column :rooms, :seat_1_6, :integer
    add_column :rooms, :seat_1_7, :integer
    add_column :rooms, :seat_1_8, :integer
    add_column :rooms, :seat_2_1, :integer
    add_column :rooms, :seat_2_2, :integer
    add_column :rooms, :seat_2_3, :integer
    add_column :rooms, :seat_2_4, :integer
    add_column :rooms, :seat_2_5, :integer
    add_column :rooms, :seat_2_6, :integer
    add_column :rooms, :seat_2_7, :integer
    add_column :rooms, :seat_2_8, :integer
    add_column :rooms, :seat_3_1, :integer
    add_column :rooms, :seat_3_2, :integer
    add_column :rooms, :seat_3_3, :integer
    add_column :rooms, :seat_3_4, :integer
    add_column :rooms, :seat_3_5, :integer
    add_column :rooms, :seat_3_6, :integer
    add_column :rooms, :seat_3_7, :integer
    add_column :rooms, :seat_3_8, :integer
    add_column :rooms, :seat_4_1, :integer
  end
end
