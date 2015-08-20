class AddReferencesInvoices < ActiveRecord::Migration
  def change
    change_table :invoices do |t|
      t.references :client, index: true
    end 
    change_table :invoicedetails do |t|
      t.references :invoice, index: true
      t.references :product, index: true
    end
  end
end
