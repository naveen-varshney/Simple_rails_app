class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
    	t.references :student, index: true
    	t.string :sub_name

      t.timestamps null: false
    end
  end
end
