variable "client_secret" {
}

provider "azurerm" {
  # Whilst version is optional, we /strongly recommend/ using it to pin the version of the Provider being used
  version = "=2.5.0"

  subscription_id = "a26ce53a-d42f-4b27-8f3a-c6024c14e379"
  client_id       = "7fdebf78-587b-494b-87bf-60cfb34842d7"
  client_secret   = var.client_secret
  tenant_id       = "29e2a540-cb8f-48d3-b5aa-4990f5d4cbcf"

  features {}
}

resource "azurerm_resource_group" "rg" {
        name = "QuickstartTerraformTest-rg"
        location = "westeurope"
}

# az login 
# az account set --subscription="a26ce53a-d42f-4b27-8f3a-c6024c14e379"
# az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/a26ce53a-d42f-4b27-8f3a-c6024c14e379"
#{
#  "appId": "7fdebf78-587b-494b-87bf-60cfb34842d7",
#  "displayName": "azure-cli-2020-09-02-11-23-50",
#  "name": "http://azure-cli-2020-09-02-11-23-50",
#  "password": "cb82eaad-2da8-4f7d-a8bd-96583ac5724b",
#  "tenant": "29e2a540-cb8f-48d3-b5aa-4990f5d4cbcf"
#}
# az login --service-principal -u 7fdebf78-587b-494b-87bf-60cfb34842d7 -p cb82eaad-2da8-4f7d-a8bd-96583ac5724b --tenant 29e2a540-cb8f-48d3-b5aa-4990f5d4cbcf