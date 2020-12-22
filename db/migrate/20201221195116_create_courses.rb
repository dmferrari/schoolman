class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :position
      t.references :division

      t.timestamps null: false
    end
  end
end
