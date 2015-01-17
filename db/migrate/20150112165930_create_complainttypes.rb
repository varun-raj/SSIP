class CreateComplainttypes < ActiveRecord::Migration
  def change
    create_table :complainttypes do |t|
      t.string :title
      t.string :description

      t.timestamps null: false
    end
  end
end
