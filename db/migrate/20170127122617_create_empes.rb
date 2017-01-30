class CreateEmpes < ActiveRecord::Migration
  def change
    create_table :empes do |t|
      t.integer :e_id
      t.string :name
      t.integer :exp
      t.date :join_date
      t.boolean :status

      t.timestamps null: false
    end
  end
end
