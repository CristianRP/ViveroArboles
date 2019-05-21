class CreatePaymentDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :payment_details do |t|
      t.string :description
      t.string :amount
      t.belongs_to :payment, foreign_key: true

      t.timestamps
    end
  end
end
