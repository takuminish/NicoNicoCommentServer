class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :text
      t.string :color
      t.string :size
      t.boolean :is_used

      t.timestamps
    end
  end
end
