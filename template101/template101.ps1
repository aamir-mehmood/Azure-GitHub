#https://docs.microsoft.com/en-us/azure/azure-resource-manager/resource-manager-create-first-template


Connect-AzureRmAccount

New-AzureRmResourceGroup -Name template101 -Location "Australia east"
New-AzureRmResourceGroupDeployment -ResourceGroupName template101 -TemplateFile "C:\Staging Script\Staging Azure Templates\template101\template101.json"


#Redeploy template with different storage name prefix and sku
New-AzureRmResourceGroupDeployment -ResourceGroupName template101 -TemplateFile "C:\Staging Script\Staging Azure Templates\template101\template101.json" -storageNamePrefix stor101x -storageSKU Standard_RAGRS


#Cleanup : 
#Remove-AzureRmResourceGroup -Name template101