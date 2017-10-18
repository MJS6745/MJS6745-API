class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :workout_date, :workout_time, :duration, :difficulty, :exercise_type, :description
end
