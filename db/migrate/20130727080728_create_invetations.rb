class CreateInvetations < ActiveRecord::Migration
  def change
    create_table :invetations do |t|
      t.string :user_id
      t.string :event_id

      t.timestamps
    end
  end
end
