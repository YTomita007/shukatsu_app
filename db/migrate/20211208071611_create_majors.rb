class CreateMajors < ActiveRecord::Migration[6.1]
  def change
    create_table :majors, id: false do |t|
      t.string :id, limit: 36, null: false, primary_key: true
      t.references :school, tyep: :string
      t.string :name, null: false

      t.timestamps
    end
  end
end
