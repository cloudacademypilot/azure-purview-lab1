param(
    [string]
    $Resourcegroupname
)
$WorkSpace = Get-AzResource -ResourceGroupName $Resourcegroupname -Resourcetype Microsoft.Purview/accounts
$WorkSpacename = $WorkSpace.Name
$TakeEndpoint = 'https://'+$WorkSpacename+'.purview.azure.com'
$DataSource = Get-AzPurviewDataSource -Endpoint $TakeEndpoint -Name 'SqlServer-onprem'
if($DataSource){
    Write-Host "SQL Server is Registered"
}
else{
    Write-Host "SQL Server is not Registered"
}
$SourceSqlServerscan = Get-AzPurviewScan -Endpoint $TakeEndpoint -DataSourceName 'SqlServer-onprem' -Name 'Scan-instance'
if($SourceSqlServerscan){
    Write-Host "SQL Server Scan is succeeded"
}
else{
    Write-Host "SQL Server Scan is not succeeded"
}
