
class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :category
      t.float :price
      t.text :description

      t.timestamps
    end
  end
end
