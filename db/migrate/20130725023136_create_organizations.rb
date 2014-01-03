class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.integer :event_id
      t.integer :org_id
      t.timestamps
    end
     add_index :organizations, [:event_id , :created_at]
     add_index :organizations, [:org_id , :created_at]
  end
end
