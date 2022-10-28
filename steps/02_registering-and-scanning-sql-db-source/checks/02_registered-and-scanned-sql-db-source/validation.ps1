param(
    [string]
    $Resourcegroupname
)
$WorkSpace = Get-AzResource -ResourceGroupName $Resourcegroupname -Resourcetype Microsoft.Purview/accounts
$WorkSpacename = $WorkSpace.Name
$TakeEndpoint = 'https://'+$WorkSpacename+'.purview.azure.com'

$DataSource = Get-AzPurviewDataSource -Endpoint $TakeEndpoint
foreach($Source in $DataSource)
{
    if($Source.kind -like "AzureSqlDatabase")
    {
        $Sqlsource = $Source.name
    }
}
$DataSourceValidate = Get-AzPurviewDataSource -Endpoint $TakeEndpoint -Name $Sqlsource
if($DataSourceValidate){
    Write-Host "SQL Database is Registered"
}
else{
    Write-Host "SQL Database is not Registered"
}

$Sourcescan = Get-AzPurviewScan -Endpoint $TakeEndpoint -DataSourceName $Sqlsource
if($Sourcescan){
    Write-Host "SQL DB Scan is succeeded"
}
else{
    Write-Host "SQL DB Scan is not succeeded"
}
