param(
    [string]
    $Resourcegroupname
)
$WorkSpace = Get-AzResource -ResourceGroupName $Resourcegroupname -Resourcetype Microsoft.Purview/accounts
$WorkSpacename = $WorkSpace.Name

$token = (Get-AzAccessToken -Resource "https://purview.azure.net").Token
$headers = @{ Authorization = "Bearer $token" }
$body = "{
  keywords: null,  
  filter: {
    or: [
      {
        assetType: ""Azure SQL Database""
      }
    ]
  }
}"
$uri = "https://"+$WorkSpacename+".purview.azure.com/catalog/api/search/query?api-version=2022-03-01-preview&$select=id"
$res = Invoke-RestMethod -Method Post -ContentType "application/json" -Uri $uri -Headers $headers -Body $body


Write-Host $res.value.userDescription

if ($res.value.userDescription)
{
    Write-Host "User has edited the description"
}
else
{
   Write-Host "User has not edited the description" 
}
