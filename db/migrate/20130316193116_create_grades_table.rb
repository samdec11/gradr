class CreateGradesTable < ActiveRecord::Migration
  def change
    create_table :grades do |t|
      t.string :name
      t.integer :value
      t.date :date
    end
  end
end
