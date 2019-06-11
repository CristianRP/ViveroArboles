class AddValueToTaxes < ActiveRecord::Migration[5.2]
  def change
    add_column :taxes, :value, :decimal
  end
end
