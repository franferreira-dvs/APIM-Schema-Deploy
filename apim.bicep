param apimName string

resource apiManagementInstance 'Microsoft.ApiManagement/service@2024-05-01' existing = {
  name: apimName  
}

resource SchemaProduct 'Microsoft.ApiManagement/service/schemas@2024-06-01-preview' = {
  parent: apiManagementInstance
  name: 'Product'
  properties:{
    document: loadJsonContent('Schemas/example.json')
    schemaType: 'json'
  }
}



