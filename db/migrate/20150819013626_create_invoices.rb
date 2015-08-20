class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.date :dateinvoice
      t.text :noteinvoice

      t.timestamps null: false
    end
  end
end
