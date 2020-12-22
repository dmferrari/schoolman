class CreateOperations < ActiveRecord::Migration[6.0]
  def change
    create_table :operations do |t|
      t.references :user, foreign_key: true
      t.references :school, foreign_key: true
      t.string :class_name, null: false
      t.integer :object_id, index: true, null: false
      t.integer :code, null: false
      t.string :resource_type, null: false
      t.integer :resource_id, null: false
      t.text :description

      t.timestamps
    end
  end
end
