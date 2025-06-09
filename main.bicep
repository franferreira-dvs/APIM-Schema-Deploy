targetScope = 'subscription'

resource resourceGroup 'Microsoft.Resources/resourceGroups@2025-03-01' existing = {
  name: '{ResourceGroupName}'
}

module apimPlan 'apim.bicep' = {
  params: {
    apimName:'{ApimName}}'
  }
  scope: resourceGroup
}

