class CreateMemberships < ActiveRecord::Migration[6.0]
  def change
    create_table :memberships do |t|
      t.integer :year, null: false
      t.belongs_to :student, index: true, foreign_key: true, null: false
      t.belongs_to :division, index: true, foreign_key: true, null: false
      t.string :status, null: false

      t.timestamps null: false
    end
    add_index :memberships, %i[year student_id division_id], unique: true
  end
end
