# ID=1 DURATION=130 sh scripts/workouts/update.sh
curl --include --request PATCH "http://localhost:4741/workouts/${ID}" \
  --header "Content-Type: application/json" \
  --data '{
    "workout": {
      "duration": "'"${DURATION}"'"
    }
  }'
