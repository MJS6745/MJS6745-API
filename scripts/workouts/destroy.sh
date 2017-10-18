# ID=2 sh scripts/workouts/destroy.sh
curl --include --request DELETE "http://localhost:4741/workouts/${ID}"
