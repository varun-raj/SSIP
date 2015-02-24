class AddProfileToStudents < ActiveRecord::Migration
  def change
    add_column :students, :name, :string
    add_column :students, :department_id, :integer
    add_column :students, :batch, :integer
  end
end
