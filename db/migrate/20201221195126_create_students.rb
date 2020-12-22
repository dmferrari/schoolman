class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.integer :file
      t.string :last_name
      t.string :first_name
      t.integer :dni
      t.integer :cuil
      t.string :gender
      t.string :email
      t.string :phone
      t.date :birth_date

      t.timestamps null: false
    end
  end
end
