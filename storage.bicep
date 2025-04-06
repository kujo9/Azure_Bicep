@description('Location should be only East US and East US2')
@allowed([
  'East US'
  'East US2'
]
)


@minLength(4)
@maxLength(24)

var stdemo = '${toLower(staccountname)}$uniqueString(resourceGroup().id)}'




resource staccount 'Microsoft.Storage/storageAccounts@2024-01-01'= {
  name: staccountname
  kind: kindvaluue
  location: location
  sku: skuproperties
  properties: stproperties
  
} 
