$WorkSpace = Get-AzResource -ResourceGroupName az-purview-labs -Resourcetype Microsoft.Purview/accounts
$WorkSpacename = $WorkSpace.Name
$TakeEndpoint = 'https://'+$WorkSpacename+'.purview.azure.com'
$DataSource1 = Get-AzPurviewDataSource -Endpoint $TakeEndpoint -Name 'Sql-db'
if($DataSource1){
    Write-Host "SQL Database is Registered"
}
else{
    Write-Host "SQL Database is not Registered"
}
$SourceSqlDatabasescan = Get-AzPurviewScan -Endpoint $TakeEndpoint -DataSourceName 'Sql-db' -Name 'Scan-db'
if($SourceSqlServerscan){
    Write-Host "SQL Database Scan is succeeded"
}
else{
    Write-Host "SQL Database Scan is not succeeded"
}


