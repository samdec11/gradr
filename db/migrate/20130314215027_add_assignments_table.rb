class AddAssignmentsTable < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :name
      t.integer :grade_id
      t.integer :student_id
      t.integer :group_id
      t.timestamps
    end
  end
end
