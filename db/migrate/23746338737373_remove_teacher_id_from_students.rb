class RemoveTeacherIdFromStudents < ActiveRecord::Migration
  def up
    remove_column :students, :teacher_id
  end

  def down
    # drop_table :teachers_students
  end
end
