class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :title
      t.string :code
      t.integer :department_id

      t.timestamps null: false
    end
  end
end
