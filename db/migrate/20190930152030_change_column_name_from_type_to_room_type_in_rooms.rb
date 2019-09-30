class ChangeColumnNameFromTypeToRoomTypeInRooms < ActiveRecord::Migration[6.0]
  def change
    rename_column :rooms, :type, :room_type
  end
end
