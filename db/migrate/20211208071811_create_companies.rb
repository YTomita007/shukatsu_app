class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies, id: false do |t|
      t.string :id, limit: 36, null: false, primary_key: true
      t.string :name, null: false
      t.string :address

      t.timestamps
    end
  end
end
