class AddDateOrderToInvoices < ActiveRecord::Migration[5.2]
  def change
    add_column :invoices, :date_order, :date
  end
end
