class CreateOffers < ActiveRecord::Migration[6.1]
  def change
    create_table :offers, id: false do |t|
      t.string :id, limit: 36, null: false, primary_key: true
      t.references :company, tyep: :string
      t.string :name, null: false

      t.timestamps
    end
  end
end
