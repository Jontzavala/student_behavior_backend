class CreateBehaviors < ActiveRecord::Migration[6.1]
  def change
    create_table :behaviors do |t|
      t.string :behavior_notes
      t.datetime :date
      t.belongs_to :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
