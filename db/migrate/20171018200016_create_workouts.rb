class CreateWorkouts < ActiveRecord::Migration[5.1]
  def change
    create_table :workouts do |t|
      t.date :workout_date
      t.text :workout_time
      t.integer :duration
      t.integer :difficulty
      t.text :exercise_type
      t.text :description

      t.timestamps
    end
  end
end
