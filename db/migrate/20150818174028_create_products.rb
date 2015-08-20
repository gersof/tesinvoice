class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :descripproduct
      t.decimal :priceunit
     

      t.timestamps null: false
    end
  end
end
