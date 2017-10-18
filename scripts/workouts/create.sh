# WORKOUT_DATE='2017-09-06' WORKOUT_TIME='5:00 PM' DURATION=120 DIFFICULTY=10 EXERCISE_TYPE='Interval training' DESCRIPTION='Murph: 1 mile run, 100 pullups, 200 squats, 300 pushups, 1 mile run' sh scripts/workouts/create.sh
curl --include --request POST "http://localhost:4741/workouts" \
  --header "Content-Type: application/json" \
  --data '{
    "workout": {
      "workout_date": "'"${WORKOUT_DATE}"'",
      "workout_time": "'"${WORKOUT_TIME}"'",
      "duration": "'"${DURATION}"'",
      "difficulty": "'"${DIFFICULTY}"'",
      "exercise_type": "'"${EXERCISE_TYPE}"'",
      "description": "'"${DESCRIPTION}"'"
    }
  }'
