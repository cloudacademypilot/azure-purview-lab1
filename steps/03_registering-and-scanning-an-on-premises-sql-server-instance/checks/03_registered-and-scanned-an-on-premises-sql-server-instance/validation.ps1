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
    if($Source.kind -like "SqlServerDatabase")
    {
        $Onpremsource = $Source.name
    }
}
$DataSourceValidate = Get-AzPurviewDataSource -Endpoint $TakeEndpoint -Name $Onpremsource
if($DataSourceValidate){
    Write-Host "On-Prem SQL Server is Registered"
}
else{
    Write-Host "On-Prem SQL Server is not Registered"
}

$Sourcescan = Get-AzPurviewScan -Endpoint $TakeEndpoint -DataSourceName $Onpremsource
if($Sourcescan){
    Write-Host "SQL Server Scan is succeeded"
}
else{
    Write-Host "SQL Server Scan is not succeeded"
}
