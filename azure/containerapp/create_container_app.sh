APP_NAME="fastapi-container-app"

az containerapp up -n $APP_NAME --source . --ingress external --target-port 80
