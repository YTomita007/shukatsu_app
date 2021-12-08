class CreateClassrooms < ActiveRecord::Migration[6.1]
  def change
    create_table :classrooms, id: false do |t|
      t.string :id, limit: 36, null: false, primary_key: true
      t.references :major, tyep: :string
      t.integer :number, null: false

      t.timestamps
    end
  end
end
