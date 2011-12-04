class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :count_all
      t.decimal :price
      t.text :description
      t.integer :package_id

      t.timestamps
    end
  end
end
