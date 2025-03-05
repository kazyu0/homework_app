class AddTeacherIdToHomeworks < ActiveRecord::Migration[7.1]
  def change
    add_column :homeworks, :teacher_id, :integer
  end
end
