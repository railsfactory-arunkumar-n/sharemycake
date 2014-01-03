class CreateOrgs < ActiveRecord::Migration
  def change
    create_table :orgs do |t|
      t.string :name
      t.string :describtion
      #t.integer :event_id
      t.integer :cause_id
      t.string :contact_person
      t.integer :phone_no
      t.boolean :status
      t.string :address_1
      t.string :address_2
      t.string :website

      t.timestamps
    end
  

  end
end
