class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :identitynumber
      t.string :nameclient
      t.string :telephone
      t.string :mobile
      t.string :address
      t.string :email

      t.timestamps null: false
    end
  end
end
