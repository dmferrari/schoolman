class CreateSchools < ActiveRecord::Migration[6.0]
  def change
    create_table :schools do |t|
      t.string :name, null: false
      t.integer :cue, null: false
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
