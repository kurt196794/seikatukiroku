class CreateKirokus < ActiveRecord::Migration[6.0]
  def change
    create_table :kirokus do |t|
      
      t.references :user,       foreign_key: true
      t.string :hydration,      null: false
      t.string :Meal,           null: false
      t.string :excretion,      null: false
      t.string :bathe          
      t.string :vital,           null: false
      t.string :Nightdiary,      null: false
      t.string :accident        
      t.text   :diary         
      t.timestamps
    end
  end
end
