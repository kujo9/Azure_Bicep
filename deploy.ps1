Conneect-AzAccount
Set-Azcontext -Subscription

New-azResourceGroupDeployment -Name "DeployStorage" -TemplateFile .\storage.bicep -ResourceGroupName 'Demo'

