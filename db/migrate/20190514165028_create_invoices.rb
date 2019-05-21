class CreateInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :invoices do |t|
      t.belongs_to :employee, foreign_key: true
      t.belongs_to :payment, foreign_key: true
      t.belongs_to :store, foreign_key: true
      t.belongs_to :customer, foreign_key: true
      t.decimal :amount

      t.timestamps
    end
  end
end
