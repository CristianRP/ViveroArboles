class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.string :amount
      t.belongs_to :payment_type, foreign_key: true

      t.timestamps
    end
  end
end
