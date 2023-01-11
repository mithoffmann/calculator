[documentation]update readme.md
# Calculator Web-App

Using:
- .NetCore 2.1
- Azure web-app service application slots
- Azure Devops
- Azure Pipeline CI and CD

[![Board Status](https://dev.azure.com/mithoffmann/b35086bf-f408-40e9-865a-79b019d26579/2e696611-7fd7-4969-96ee-1a4dc7213710/_apis/work/boardbadge/d04e5de4-3f8a-4edc-b9f3-65decd20ea38?columnOptions=1)](https://dev.azure.com/mithoffmann/b35086bf-f408-40e9-865a-79b019d26579/_boards/board/t/2e696611-7fd7-4969-96ee-1a4dc7213710/Microsoft.FeatureCategory/)


### Build CI Setup triggers:
- main commits


### Azure
resource_group: rg-calculator
plan: plan-calculator
webapp: 
- app-calculator
- app-calculator-dev
- app-calculator-qa

### Create a appservice on azure
1.Create a service
```
az login
az group create -l northeurope -n rg-calculator
az appservice plan create -g rg-calculator -n calculator-webapp-plan --sku S1
az webapp create --name 'calculator-webapp' --plan 'calculator-webapp-plan' -g 'rg-calculator' --% --runtime "DOTNETCORE|2.1"
az webapp deployment slot create --name calculator-webapp --resource-group 'rg-calculator' --slot dev
```