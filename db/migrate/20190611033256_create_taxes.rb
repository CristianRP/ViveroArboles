class CreateTaxes < ActiveRecord::Migration[5.2]
  def change
    create_table :taxes do |t|
      t.string :description
      t.belongs_to :category, foreign_key: true

      t.timestamps
    end
  end
end
