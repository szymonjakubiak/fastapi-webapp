#!/bin/bash

LOCATION="westeurope"

RG_NAME="rg_fastapi_webapp"
APP_PLAN_NAME="fastapi-webapp-plan"
APP_NAME="fastapi-webapp-example-app"
RUNTIME="PYTHON:3.9"
STARTUP_FILE="azure/webapp/startup_file.sh"

az group create --location $LOCATION --name $RG_NAME \
&& az appservice plan create --name $APP_PLAN_NAME --resource-group $RG_NAME --is-linux --sku "F1" \
&& az webapp create --name $APP_NAME --plan $APP_PLAN_NAME --resource-group $RG_NAME --runtime $RUNTIME --startup-file $STARTUP_FILE --deployment-local-git
