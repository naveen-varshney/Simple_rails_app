class AddColumnToStudent < ActiveRecord::Migration
  def change
  	add_column :students,:dob,:date
  end
end
