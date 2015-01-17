class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :title
      t.text :description
      t.integer :subject_id
      t.integer :faculty_id
      t.integer :department_id

      t.timestamps null: false
    end
  end
end
