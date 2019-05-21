class CreateMunicipalities < ActiveRecord::Migration[5.2]
  def change
    create_table :municipalities do |t|
      t.string :name
      t.belongs_to :department, foreign_key: true

      t.timestamps
    end
  end
end
