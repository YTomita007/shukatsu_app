class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students, id: false do |t|
      t.string :id, limit: 36, null: false, primary_key: true
      t.references :classroom, tyep: :string
      t.string :name, null: false
      t.string :email, null: false
      t.integer :number

      t.timestamps
    end
  end
end
