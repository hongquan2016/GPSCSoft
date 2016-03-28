class AddIdToDepartments < ActiveRecord::Migration
  def change
    add_column :departments, :department_id, :string
  end
end
