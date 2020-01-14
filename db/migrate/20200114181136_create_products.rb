class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string  :name, null: false
      t.string  :description
      t.float   :price
      t.integer :make

      t.references :category

      t.timestamps
    end
  end
end
