class AddDeadlineToHomeworks < ActiveRecord::Migration[7.1]
  def change
    add_column :homeworks, :deadline, :date
  end
end
