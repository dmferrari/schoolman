class CreateAttendances < ActiveRecord::Migration[6.0]
  def change
    create_table :attendances do |t|
      t.date :day
      t.references :membership, index: true, foreign_key: true
      t.string :kind
      t.text :comment

      t.timestamps null: false
    end
    add_index :attendances, %i[day kind]
  end
end
