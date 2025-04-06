@description('The host name (address)of the origin')
param originHostName string

@description('The name of the CDN profile')
param profileName string = 'cdn-${uniqueString(resourceGroup().id)}'

@description('Nmae of the CDN endpoint')
param endpointName string = 'endpoint-${uniqueString(resourceGroup().id)}'
