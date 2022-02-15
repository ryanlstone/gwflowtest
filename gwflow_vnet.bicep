@description('Specifies the location for resources.')
param location string = 'uksouth'

resource gwflowvnet 'Microsoft.Network/virtualNetworks@2021-05-01' = {
  name: 'vnet-gwflowtest-01'
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.4.0.0/24'
      ]
    }
    subnets: [
      {
      name: 'snet-gwflowtest-01'
      properties: {
        addressPrefix: '10.4.0.0/26'
      }
    }
    ]
  }
}
