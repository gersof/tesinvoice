class CreateTestboots < ActiveRecord::Migration
  def change
    create_table :testboots do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
