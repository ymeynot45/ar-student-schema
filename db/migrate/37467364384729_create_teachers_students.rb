class CreateTeachersStudents < ActiveRecord::Migration
  def up
    create_table :teachers_students do |t|
      t.integer :teacher_id
      t.integer :student_id
    end
  end

  def down
    drop_table :teachers_students
  end
end
