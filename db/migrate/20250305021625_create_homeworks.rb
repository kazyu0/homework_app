class CreateHomeworks < ActiveRecord::Migration[7.1]
  def change
    create_table :homeworks do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.datetime :deadline, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
