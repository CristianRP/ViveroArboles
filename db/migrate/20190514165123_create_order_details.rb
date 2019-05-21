class CreateOrderDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :order_details do |t|
      t.belongs_to :invoice, foreign_key: true
      t.belongs_to :product, foreign_key: true
      t.decimal :quantity
      t.decimal :amount
      t.belongs_to :municipality, foreign_key: true

      t.timestamps
    end
  end
end
