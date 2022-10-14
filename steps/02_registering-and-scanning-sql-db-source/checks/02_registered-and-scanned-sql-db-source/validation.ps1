$WorkSpace = Get-AzResource -ResourceGroupName az-lab-purview -Resourcetype Microsoft.Purview/accounts
$WorkSpacename = $WorkSpace.Name
$TakeEndpoint = 'https://'+$WorkSpacename+'.purview.azure.com'
$DataSource = Get-AzPurviewDataSource -Endpoint $TakeEndpoint
foreach($Sourceh in $DataSource)
{
    if($Sourceh.Name -like "AzureSqlDatabase*")
    {
        $Sourcesql = $Sourceh.Name
    }
}
$DataSourceValidate = Get-AzPurviewDataSource -Endpoint $TakeEndpoint -Name $Sourcesql
if($DataSourceValidate){
    Write-Host "SQL DB is Registered"
}
else{
    Write-Host "SQL DB is not Registered"
}
$SourceSqlscan = Get-AzPurviewScan -Endpoint $TakeEndpoint -DataSourceName $Sourcesql
if($SourceSqlscan){
    Write-Host "SQL DB Scan is succeeded"
}
else{
    Write-Host "SQL DB Scan is not succeeded"
}