class CreateComplaintTypes < ActiveRecord::Migration
  def change
    create_table :complaint_types do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end
