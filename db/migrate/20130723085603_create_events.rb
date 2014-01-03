class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :user_id
      t.integer :mobile_no
      t.string :title
      t.date :date
      t.string :description
      t.string :message
      t.timestamps
    end
  end
end
