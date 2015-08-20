class CreateInvoicedetails < ActiveRecord::Migration
  def change
    create_table :invoicedetails do |t|
      t.decimal :quantity
      t.decimal :price

      t.timestamps null: false
    end
  end
end
