class CreateMicroposts < ActiveRecord::Migration

  drop_table :microposts
  def up
    create_table :microposts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps null: false
    end
  end

  def down
    drop_table :microposts
  end
end
