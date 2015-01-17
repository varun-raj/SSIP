class CreateComplaints < ActiveRecord::Migration
  def change
    create_table :complaints do |t|
      t.string :title
      t.text :description
      t.integer :department_id
      t.integer :complainttype_id

      t.timestamps null: false
    end
  end
end
