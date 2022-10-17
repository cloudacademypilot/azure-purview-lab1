param(
    [string]
    $Resourcegroupname
)
$WorkSpace = Get-AzResource -ResourceGroupName $Resourcegroupname -Resourcetype Microsoft.Purview/accounts
$WorkSpacename = $WorkSpace.Name
$token = (Get-AzAccessToken -Resource "https://purview.azure.net").Token

$headers = @{ Authorization = "Bearer $token" }
$uri = "https://"+$WorkSpacename+".purview.azure.com/account/collections/?api-version=2019-11-01-preview"

$res = Invoke-RestMethod -Method Get -ContentType "application/json" -Uri $uri -Headers $headers


foreach($i in $res.value)
{
    foreach($j in $i)
    {
        if($j.friendlyName -like "Contoso")
        {
            $collection = $j.friendlyName
        }
    }
}

if($collection){
    Write-Host "Contoso collection is created"
}
else{
    Write-Host "Contoso collection is not created"
}


foreach($i in $res.value)
{
    foreach($j in $i)
    {
        if($j.friendlyName -like "Sub Contoso")
        {
            $collection = $j.friendlyName
        }
    }
}

if($collection){
    Write-Host "Sub Contoso collection is created"
}
else{
    Write-Host "Sub Contoso collection is not created"
}
