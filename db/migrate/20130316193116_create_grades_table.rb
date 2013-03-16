class CreateGradesTable < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.string :name
      t.integer :assignment_id
      t.integer :student_id
    end
  end
end
