# ID=3 sh scripts/workouts/destroy.sh
curl --include --request DELETE "http://localhost:4741/workouts/${ID}"
