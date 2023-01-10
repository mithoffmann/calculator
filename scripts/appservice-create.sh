az login
az group create -l northeurope -n rg-calculator
az appservice plan create -g rg-calculator -n calculator-webapp-plan --sku S1
az webapp create --name 'calculator-webapp' --plan 'calculator-webapp-plan' -g 'rg-calculator' --% --runtime "DOTNETCORE|2.1"
az webapp deployment slot create --name calculator-webapp --resource-group 'rg-calculator' --slot dev