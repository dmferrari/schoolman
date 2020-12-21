class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :last_name
      t.string :first_name
      t.integer :id_number
      t.string :gender
      t.date :birth_date

      t.timestamps
    end
  end
end
