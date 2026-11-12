// Azure Container Instances: runs the hello-api container image from GHCR.
//
// Deploy:
//   az group create --name rg-hello --location swedencentral
//   az deployment group create \
//     --resource-group rg-hello \
//     --template-file main.bicep \
//     --parameters dnsNameLabel=<globally-unique-label>
//
// Clean up (stops all charges):
//   az group delete --name rg-hello --yes
//
// Note: ACI serves plain HTTP only (no TLS). Test with http://<fqdn>:8080/hello

@description('Name of the container group.')
param containerGroupName string = 'hello-api'

@description('Azure region. Defaults to the resource group location.')
param location string = resourceGroup().location

@description('Container image to run. Must be amd64 (ACI does not support arm64 images). The image must be public, or add imageRegistryCredentials for a private registry.')
param image string = 'ghcr.io/eucalypto/hello-api:v1'

@description('Port the app listens on inside the container. ACI exposes the same port publicly.')
param containerPort int = 8080

@description('Number of vCPUs. ACI bills per vCPU-second.')
@minValue(1)
@maxValue(4)
param cpuCores int = 1

@description('Memory in GB. ACI bills per GB-second.')
@minValue(1)
param memoryInGb int = 1

@description('Optional DNS name label, giving <label>.<region>.azurecontainer.io. Must be unique within the region. Leave empty for an IP address only.')
param dnsNameLabel string = ''

@description('Restart policy. Use Always for a long-running web service.')
@allowed([
  'Always'
  'OnFailure'
  'Never'
])
param restartPolicy string = 'Always'

resource containerGroup 'Microsoft.ContainerInstance/containerGroups@2026-07-01' = {
  name: containerGroupName
  location: location
  properties: {
    sku: 'Standard'
    osType: 'Linux'
    restartPolicy: restartPolicy
    containers: [
      {
        name: containerGroupName
        properties: {
          image: image
          ports: [
            {
              protocol: 'TCP'
              port: containerPort
            }
          ]
          resources: {
            requests: {
              cpu: cpuCores
              memoryInGB: memoryInGb
            }
          }
        }
      }
    ]
    ipAddress: {
      type: 'Public'
      dnsNameLabel: empty(dnsNameLabel) ? null : dnsNameLabel
      ports: [
        {
          protocol: 'TCP'
          port: containerPort
        }
      ]
    }
  }
}

@description('Public IP address assigned to the container group.')
output ipAddress string = containerGroup.properties.ipAddress.ip

@description('Fully qualified domain name, empty if no DNS name label was set.')
output fqdn string = containerGroup.properties.ipAddress.?fqdn ?? ''
