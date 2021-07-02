class CreateKirokus < ActiveRecord::Migration[6.0]
  def change
    create_table :kirokus do |t|
      
      t.references :user,       foreign_key: true
      t.string :hydration,      null: false
      t.integer :Meal,           null: false
      t.string :excretion,      null: false
      t.string :bathe          
      t.string :vital,           null: false
      t.string :Nightdiary,      null: false
      t.string :accident        
      t.text   :diary     
      t.text   :a1
      t.text   :a2
      t.text   :a3
      t.text   :a5
      t.text   :a6
      t.text   :a7
      t.text   :a8
      t.text   :a10
      t.text   :a11
      t.text   :a12
      t.timestamps
    end
  end
end
