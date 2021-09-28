class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :seat_number
      t.belongs_to :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
