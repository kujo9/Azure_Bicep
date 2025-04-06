module app 'modules/app.bicep' ={
  name: 'launch-app'
  params:{
    location: location
    appServiceName: appServiceAppName
    appServicePlanName: appServicePlanName

  }
}

module cdn 'modules/cdn.bicep' = if (deployCdn) {
  name: 'launch-cdn'
  params:{
    httpsOnly: true 
    originHostName: app.outputs.appServiceAppHostName
  }
}
