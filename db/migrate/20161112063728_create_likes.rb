class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.integer :user_id
      t.integer :message_id
      t.timestamps null: false
    end
    add_index :likes, :user_id
    add_index :likes, :message_id
  end
end
