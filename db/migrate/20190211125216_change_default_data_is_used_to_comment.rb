class ChangeDefaultDataIsUsedToComment < ActiveRecord::Migration[5.2]
  def change
    change_column_default :comments, :is_used, false
  end
end
