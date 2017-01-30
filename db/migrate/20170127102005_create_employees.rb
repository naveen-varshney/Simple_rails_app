class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
    	t.string :e_id
    	t.string :name
    	t.string :exp
    	t.date :join_date
    	t.boolean :status, default: true

      t.timestamps null: false
    end
  end
end
