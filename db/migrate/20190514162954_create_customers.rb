class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :last_name
      t.belongs_to :company, foreign_key: true

      t.timestamps
    end
  end
end
