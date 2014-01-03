class CreateCauses < ActiveRecord::Migration
  def change
    create_table :causes do |t|
      t.string :name
      t.string :describtion
      
      t.timestamps
    end
 end
end
