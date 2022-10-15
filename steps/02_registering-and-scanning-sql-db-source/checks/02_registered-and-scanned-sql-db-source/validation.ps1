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


$DataSource2 = Get-AzPurviewDataSource -Endpoint $TakeEndpoint -Name 'Adls-Gen2'
if($DataSource2){
    Write-Host "ADLS Gen2 Account is Registered"
}
else{
    Write-Host "ADLS Gen2 Account is not Registered"
}
$SourceAdlsscan = Get-AzPurviewScan -Endpoint $TakeEndpoint -DataSourceName 'Adls-Gen2' -Name 'Scan-adls'
if($SourceAdlsscan){
    Write-Host "ADLS Gen2 Scan is succeeded"
}
else{
    Write-Host "ADLS Gen2 Scan is not succeeded"
}
