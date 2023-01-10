[documentation]update readme.md

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
az group create -l northeurope -n rg-yamldemonetcore
az appservice plan create -g rg-yamldemonetcore -n plan-yamldemonetcore --sku S1
az webapp create -g rg-yamldemonetcore -p plan-yamldemonetcore -n app-yamldemonetcore --% --runtime 'DOTNET|5.0'
```