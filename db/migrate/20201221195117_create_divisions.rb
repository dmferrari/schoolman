class CreateDivisions < ActiveRecord::Migration[6.0]
  def change
    create_table :divisions do |t|
      t.belongs_to :course, index: true, foreign_key: true
      t.string :name
      t.integer :position

      t.timestamps null: false
    end
  end
end
