class CreateDepartments < ActiveRecord::Migration[5.2]
  def change
    create_table :departments do |t|
      t.string :name
      t.belongs_to :region, foreign_key: true

      t.timestamps
    end
  end
end
