class AddRegnoToStudents < ActiveRecord::Migration
  def change
    add_column :students, :regno, :string
  end
end
