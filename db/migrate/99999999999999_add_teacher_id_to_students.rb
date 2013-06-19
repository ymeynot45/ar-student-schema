class AddTeacherIdToStudents < ActiveRecord::Migration
  def up
    change_table :students do |t|
      t.integer :teacher_id
    end
  end

  def down
    remove_column :students, :teacher_id
  end
end
