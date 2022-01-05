class CreateGeneralProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :general_products do |t|
      t.string :name
      t.decimal :price
      t.string :description

      t.timestamps
    end
  end
end
