class CreateDoses < ActiveRecord::Migration
  def change
    create_table :doses do |t|
      t.integer :amount
      t.references :cockail, index: true
      t.references :ingredient, index: true

      t.timestamps
    end
  end
end
