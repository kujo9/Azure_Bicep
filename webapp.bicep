resource aspdemo 'Microsoft.Web/serverfarms@2024-04-01' existing={
  name: 'aspsamescope'
}
resource aspdiffdemo 'Microsoft.Web/serverfarms@2024-04-01' existing{
  name: 'aspdiffdemo'
  scope: resourceGroup('srsdiffdemo')
}

resource demowebapp 'Microsoft.Web/sites@2024-04-01'={
  name: 'srsdemotest'
  location: 'East US'
  properties: {
    serverFarmId: aspdemo.id
  }
}
resource webapp2 'Microsoft.Web/sites@2024-04-01'={
  name: 'srsdemo2'
  location:'East-us'
  properties:{
    serverFarmId:aspdiffdemo.id
  }
}
