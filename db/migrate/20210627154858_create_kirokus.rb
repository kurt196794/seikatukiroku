class CreateKirokus < ActiveRecord::Migration[6.0]
  def change
    create_table :kirokus do |t|
      
      t.references :user,       foreign_key: true
      t.string :name,           null: false
      t.integer :mealasa_id
      t.integer :mealhiru_id
      t.integer :mealyuu_id
      t.string :hydrationasa
      t.string :hydrationhiru
      t.string :hydrationyuu
      t.integer :excretionasa_id
      t.integer :excretionhiru_id
      t.integer :excretionyuu_id
      t.string :vitalasa
      t.string :vitalhiru
      t.string :vitalyuu
      t.integer :bathe_id
      t.integer :nightrecord_id
      t.text :diary
      t.text :nightdiary
      t.text :accident
      t.text :message

      t.timestamps
    end
  end
end
