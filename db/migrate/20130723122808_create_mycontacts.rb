class CreateMycontacts < ActiveRecord::Migration
  def change
    create_table :mycontacts do |t|
      t.string :name
      t.string :email
      t.integer :phone_no
      t.integer :user_id
      t.string :message
      t.timestamps
    end
  end
end
