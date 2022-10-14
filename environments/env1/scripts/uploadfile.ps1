param(
[string] $ResourceGroupName,
[string] $RawDataLakeAccountName
)
Write-Host "file upload script started"
 if ((Get-Module -ListAvailable Az.Accounts) -eq $null)
	{
       Install-Module -Name Az.Accounts -Force
    }

$uri = "https://raw.githubusercontent.com/CSALabsAutomation/azure-purview-labs/main/environments/env1/Artifacts/import-terms-sample.csv";
$bacpacFileName = "import-terms-sample.csv";

$storageaccountkey = Get-AzStorageAccountKey -ResourceGroupName $Resourcegroupname -Name $RawDataLakeAccountName;

$ctx = New-AzStorageContext -StorageAccountName $RawDataLakeAccountName -StorageAccountKey $storageaccountkey.Value[0]

Invoke-WebRequest -Uri $uri -OutFile $bacpacFileName
Set-AzStorageBlobContent -File $bacpacFileName -Container "raw" -Blob 'import-terms-sample.csv' -Context $ctx

#############################

$uri = "https://raw.githubusercontent.com/CSALabsAutomation/azure-purview-labs/main/environments/env1/Artifacts/Twitter/twitter_handles.parquet";
$bacpacFileName = "twitter_handles.parquet";

$storageaccountkey = Get-AzStorageAccountKey -ResourceGroupName $Resourcegroupname -Name $RawDataLakeAccountName;

$ctx = New-AzStorageContext -StorageAccountName $RawDataLakeAccountName -StorageAccountKey $storageaccountkey.Value[0]

Invoke-WebRequest -Uri $uri -OutFile $bacpacFileName
Set-AzStorageBlobContent -File $bacpacFileName -Container "raw" -Blob 'Twitter/twitter_handles.parquet' -Context $ctx

#############################

$uri = "https://raw.githubusercontent.com/CSALabsAutomation/azure-purview-labs/main/environments/env1/Artifacts/Twitter/twitter_handles.csv";
$bacpacFileName = "twitter_handles.csv";

$storageaccountkey = Get-AzStorageAccountKey -ResourceGroupName $Resourcegroupname -Name $RawDataLakeAccountName;

$ctx = New-AzStorageContext -StorageAccountName $RawDataLakeAccountName -StorageAccountKey $storageaccountkey.Value[0]

Invoke-WebRequest -Uri $uri -OutFile $bacpacFileName
Set-AzStorageBlobContent -File $bacpacFileName -Container "raw" -Blob 'Twitter/twitter_handles.csv' -Context $ctx

#############################

$uri = "https://raw.githubusercontent.com/CSALabsAutomation/azure-purview-labs/main/environments/env1/Artifacts/BingCoronavirusQuerySet/2020/QueriesByCountry_2020-01-01_2020-01-31.tsv";
$bacpacFileName = "QueriesByCountry_2020-01-01_2020-01-31.tsv";

$storageaccountkey = Get-AzStorageAccountKey -ResourceGroupName $Resourcegroupname -Name $RawDataLakeAccountName;

$ctx = New-AzStorageContext -StorageAccountName $RawDataLakeAccountName -StorageAccountKey $storageaccountkey.Value[0]

Invoke-WebRequest -Uri $uri -OutFile $bacpacFileName
Set-AzStorageBlobContent -File $bacpacFileName -Container "raw" -Blob 'BingCoronavirusQuerySet/2020/QueriesByCountry_2020-01-01_2020-01-31.tsv' -Context $ctx

#############################

$uri = "https://raw.githubusercontent.com/CSALabsAutomation/azure-purview-labs/main/environments/env1/Artifacts/BingCoronavirusQuerySet/2020/QueriesByCountry_2020-02-01_2020-02-29.tsv";
$bacpacFileName = "QueriesByCountry_2020-02-01_2020-02-29.tsv";

$storageaccountkey = Get-AzStorageAccountKey -ResourceGroupName $Resourcegroupname -Name $RawDataLakeAccountName;

$ctx = New-AzStorageContext -StorageAccountName $RawDataLakeAccountName -StorageAccountKey $storageaccountkey.Value[0]

Invoke-WebRequest -Uri $uri -OutFile $bacpacFileName
Set-AzStorageBlobContent -File $bacpacFileName -Container "raw" -Blob 'BingCoronavirusQuerySet/2020/QueriesByCountry_2020-02-01_2020-02-29.tsv' -Context $ctx

#############################

$uri = "https://raw.githubusercontent.com/CSALabsAutomation/azure-purview-labs/main/environments/env1/Artifacts/BingCoronavirusQuerySet/2020/QueriesByCountry_2020-03-01_2020-03-31.tsv";
$bacpacFileName = "QueriesByCountry_2020-03-01_2020-03-31.tsv";

$storageaccountkey = Get-AzStorageAccountKey -ResourceGroupName $Resourcegroupname -Name $RawDataLakeAccountName;

$ctx = New-AzStorageContext -StorageAccountName $RawDataLakeAccountName -StorageAccountKey $storageaccountkey.Value[0]

Invoke-WebRequest -Uri $uri -OutFile $bacpacFileName
Set-AzStorageBlobContent -File $bacpacFileName -Container "raw" -Blob 'BingCoronavirusQuerySet/2020/QueriesByCountry_2020-03-01_2020-03-31.tsv' -Context $ctx

#############################

$uri = "https://raw.githubusercontent.com/CSALabsAutomation/azure-purview-labs/main/environments/env1/Artifacts/BingCoronavirusQuerySet/2020/QueriesByCountry_2020-04-01_2020-04-30.tsv";
$bacpacFileName = "QueriesByCountry_2020-04-01_2020-04-30.tsv";

$storageaccountkey = Get-AzStorageAccountKey -ResourceGroupName $Resourcegroupname -Name $RawDataLakeAccountName;

$ctx = New-AzStorageContext -StorageAccountName $RawDataLakeAccountName -StorageAccountKey $storageaccountkey.Value[0]

Invoke-WebRequest -Uri $uri -OutFile $bacpacFileName
Set-AzStorageBlobContent -File $bacpacFileName -Container "raw" -Blob 'BingCoronavirusQuerySet/2020/QueriesByCountry_2020-04-01_2020-04-30.tsv' -Context $ctx

#############################

$uri = "https://raw.githubusercontent.com/CSALabsAutomation/azure-purview-labs/main/environments/env1/Artifacts/BingCoronavirusQuerySet/2020/QueriesByCountry_2020-05-01_2020-05-31.tsv";
$bacpacFileName = "QueriesByCountry_2020-05-01_2020-05-31.tsv";

$storageaccountkey = Get-AzStorageAccountKey -ResourceGroupName $Resourcegroupname -Name $RawDataLakeAccountName;

$ctx = New-AzStorageContext -StorageAccountName $RawDataLakeAccountName -StorageAccountKey $storageaccountkey.Value[0]

Invoke-WebRequest -Uri $uri -OutFile $bacpacFileName
Set-AzStorageBlobContent -File $bacpacFileName -Container "raw" -Blob 'BingCoronavirusQuerySet/2020/QueriesByCountry_2020-05-01_2020-05-31.tsv' -Context $ctx

#############################

$uri = "https://raw.githubusercontent.com/CSALabsAutomation/azure-purview-labs/main/environments/env1/Artifacts/BingCoronavirusQuerySet/2020/QueriesByCountry_2020-06-01_2020-06-30.tsv";
$bacpacFileName = "QueriesByCountry_2020-06-01_2020-06-30.tsv";

$storageaccountkey = Get-AzStorageAccountKey -ResourceGroupName $Resourcegroupname -Name $RawDataLakeAccountName;

$ctx = New-AzStorageContext -StorageAccountName $RawDataLakeAccountName -StorageAccountKey $storageaccountkey.Value[0]

Invoke-WebRequest -Uri $uri -OutFile $bacpacFileName
Set-AzStorageBlobContent -File $bacpacFileName -Container "raw" -Blob 'BingCoronavirusQuerySet/2020/QueriesByCountry_2020-06-01_2020-06-30.tsv' -Context $ctx

#############################

$uri = "https://raw.githubusercontent.com/CSALabsAutomation/azure-purview-labs/main/environments/env1/Artifacts/BingCoronavirusQuerySet/2020/QueriesByCountry_2020-07-01_2020-07-31.tsv";
$bacpacFileName = "QueriesByCountry_2020-07-01_2020-07-31.tsv";

$storageaccountkey = Get-AzStorageAccountKey -ResourceGroupName $Resourcegroupname -Name $RawDataLakeAccountName;

$ctx = New-AzStorageContext -StorageAccountName $RawDataLakeAccountName -StorageAccountKey $storageaccountkey.Value[0]

Invoke-WebRequest -Uri $uri -OutFile $bacpacFileName
Set-AzStorageBlobContent -File $bacpacFileName -Container "raw" -Blob 'BingCoronavirusQuerySet/2020/QueriesByCountry_2020-07-01_2020-07-31.tsv' -Context $ctx

#############################

$uri = "https://raw.githubusercontent.com/CSALabsAutomation/azure-purview-labs/main/environments/env1/Artifacts/BingCoronavirusQuerySet/2020/QueriesByCountry_2020-08-01_2020-08-31.tsv";
$bacpacFileName = "QueriesByCountry_2020-08-01_2020-08-31.tsv";

$storageaccountkey = Get-AzStorageAccountKey -ResourceGroupName $Resourcegroupname -Name $RawDataLakeAccountName;

$ctx = New-AzStorageContext -StorageAccountName $RawDataLakeAccountName -StorageAccountKey $storageaccountkey.Value[0]

Invoke-WebRequest -Uri $uri -OutFile $bacpacFileName
Set-AzStorageBlobContent -File $bacpacFileName -Container "raw" -Blob 'BingCoronavirusQuerySet/2020/QueriesByCountry_2020-08-01_2020-08-31.tsv' -Context $ctx

#############################

$uri = "https://raw.githubusercontent.com/CSALabsAutomation/azure-purview-labs/main/environments/env1/Artifacts/BingCoronavirusQuerySet/2020/QueriesByCountry_2020-09-01_2020-09-30.tsv";
$bacpacFileName = "QueriesByCountry_2020-09-01_2020-09-30.tsv";

$storageaccountkey = Get-AzStorageAccountKey -ResourceGroupName $Resourcegroupname -Name $RawDataLakeAccountName;

$ctx = New-AzStorageContext -StorageAccountName $RawDataLakeAccountName -StorageAccountKey $storageaccountkey.Value[0]

Invoke-WebRequest -Uri $uri -OutFile $bacpacFileName
Set-AzStorageBlobContent -File $bacpacFileName -Container "raw" -Blob 'BingCoronavirusQuerySet/2020/QueriesByCountry_2020-09-01_2020-09-30.tsv' -Context $ctx

#############################

$uri = "https://raw.githubusercontent.com/CSALabsAutomation/azure-purview-labs/main/environments/env1/Artifacts/BingCoronavirusQuerySet/2020/QueriesByCountry_2020-10-01_2020-10-31.tsv";
$bacpacFileName = "QueriesByCountry_2020-10-01_2020-10-31.tsv";

$storageaccountkey = Get-AzStorageAccountKey -ResourceGroupName $Resourcegroupname -Name $RawDataLakeAccountName;

$ctx = New-AzStorageContext -StorageAccountName $RawDataLakeAccountName -StorageAccountKey $storageaccountkey.Value[0]

Invoke-WebRequest -Uri $uri -OutFile $bacpacFileName
Set-AzStorageBlobContent -File $bacpacFileName -Container "raw" -Blob 'BingCoronavirusQuerySet/2020/QueriesByCountry_2020-10-01_2020-10-31.tsv' -Context $ctx

#############################

$uri = "https://raw.githubusercontent.com/CSALabsAutomation/azure-purview-labs/main/environments/env1/Artifacts/BingCoronavirusQuerySet/2020/QueriesByCountry_2020-11-01_2020-11-30.tsv";
$bacpacFileName = "QueriesByCountry_2020-11-01_2020-11-30.tsv";

$storageaccountkey = Get-AzStorageAccountKey -ResourceGroupName $Resourcegroupname -Name $RawDataLakeAccountName;

$ctx = New-AzStorageContext -StorageAccountName $RawDataLakeAccountName -StorageAccountKey $storageaccountkey.Value[0]

Invoke-WebRequest -Uri $uri -OutFile $bacpacFileName
Set-AzStorageBlobContent -File $bacpacFileName -Container "raw" -Blob 'BingCoronavirusQuerySet/2020/QueriesByCountry_2020-11-01_2020-11-30.tsv' -Context $ctx

#############################

$uri = "https://raw.githubusercontent.com/CSALabsAutomation/azure-purview-labs/main/environments/env1/Artifacts/BingCoronavirusQuerySet/2020/QueriesByCountry_2020-12-01_2020-12-31.tsv";
$bacpacFileName = "QueriesByCountry_2020-12-01_2020-12-31.tsv";

$storageaccountkey = Get-AzStorageAccountKey -ResourceGroupName $Resourcegroupname -Name $RawDataLakeAccountName;

$ctx = New-AzStorageContext -StorageAccountName $RawDataLakeAccountName -StorageAccountKey $storageaccountkey.Value[0]

Invoke-WebRequest -Uri $uri -OutFile $bacpacFileName
Set-AzStorageBlobContent -File $bacpacFileName -Container "raw" -Blob 'BingCoronavirusQuerySet/2020/QueriesByCountry_2020-12-01_2020-12-31.tsv' -Context $ctx

#############################

$uri = "https://raw.githubusercontent.com/CSALabsAutomation/azure-purview-labs/main/environments/env1/Artifacts/BingCoronavirusQuerySet/2020/QueriesByState_2020-01-01_2020-01-31.tsv";
$bacpacFileName = "QueriesByState_2020-01-01_2020-01-31.tsv";

$storageaccountkey = Get-AzStorageAccountKey -ResourceGroupName $Resourcegroupname -Name $RawDataLakeAccountName;

$ctx = New-AzStorageContext -StorageAccountName $RawDataLakeAccountName -StorageAccountKey $storageaccountkey.Value[0]

Invoke-WebRequest -Uri $uri -OutFile $bacpacFileName
Set-AzStorageBlobContent -File $bacpacFileName -Container "raw" -Blob 'BingCoronavirusQuerySet/2020/QueriesByState_2020-01-01_2020-01-31.tsv' -Context $ctx

#############################

$uri = "https://raw.githubusercontent.com/CSALabsAutomation/azure-purview-labs/main/environments/env1/Artifacts/BingCoronavirusQuerySet/2020/QueriesByState_2020-02-01_2020-02-29.tsv";
$bacpacFileName = "QueriesByState_2020-02-01_2020-02-29.tsv";

$storageaccountkey = Get-AzStorageAccountKey -ResourceGroupName $Resourcegroupname -Name $RawDataLakeAccountName;

$ctx = New-AzStorageContext -StorageAccountName $RawDataLakeAccountName -StorageAccountKey $storageaccountkey.Value[0]

Invoke-WebRequest -Uri $uri -OutFile $bacpacFileName
Set-AzStorageBlobContent -File $bacpacFileName -Container "raw" -Blob 'BingCoronavirusQuerySet/2020/QueriesByState_2020-02-01_2020-02-29.tsv' -Context $ctx

#############################

$uri = "https://raw.githubusercontent.com/CSALabsAutomation/azure-purview-labs/main/environments/env1/Artifacts/BingCoronavirusQuerySet/2020/QueriesByState_2020-03-01_2020-03-31.tsv";
$bacpacFileName = "QueriesByState_2020-03-01_2020-03-31.tsv";

$storageaccountkey = Get-AzStorageAccountKey -ResourceGroupName $Resourcegroupname -Name $RawDataLakeAccountName;

$ctx = New-AzStorageContext -StorageAccountName $RawDataLakeAccountName -StorageAccountKey $storageaccountkey.Value[0]

Invoke-WebRequest -Uri $uri -OutFile $bacpacFileName
Set-AzStorageBlobContent -File $bacpacFileName -Container "raw" -Blob 'BingCoronavirusQuerySet/2020/QueriesByState_2020-03-01_2020-03-31.tsv' -Context $ctx

#############################

$uri = "https://raw.githubusercontent.com/CSALabsAutomation/azure-purview-labs/main/environments/env1/Artifacts/BingCoronavirusQuerySet/2020/QueriesByState_2020-04-01_2020-04-30.tsv";
$bacpacFileName = "QueriesByState_2020-04-01_2020-04-30.tsv";

$storageaccountkey = Get-AzStorageAccountKey -ResourceGroupName $Resourcegroupname -Name $RawDataLakeAccountName;

$ctx = New-AzStorageContext -StorageAccountName $RawDataLakeAccountName -StorageAccountKey $storageaccountkey.Value[0]

Invoke-WebRequest -Uri $uri -OutFile $bacpacFileName
Set-AzStorageBlobContent -File $bacpacFileName -Container "raw" -Blob 'BingCoronavirusQuerySet/2020/QueriesByState_2020-04-01_2020-04-30.tsv' -Context $ctx

#############################

$uri = "https://raw.githubusercontent.com/CSALabsAutomation/azure-purview-labs/main/environments/env1/Artifacts/BingCoronavirusQuerySet/2020/QueriesByState_2020-05-01_2020-05-31.tsv";
$bacpacFileName = "QueriesByState_2020-05-01_2020-05-31.tsv";

$storageaccountkey = Get-AzStorageAccountKey -ResourceGroupName $Resourcegroupname -Name $RawDataLakeAccountName;

$ctx = New-AzStorageContext -StorageAccountName $RawDataLakeAccountName -StorageAccountKey $storageaccountkey.Value[0]

Invoke-WebRequest -Uri $uri -OutFile $bacpacFileName
Set-AzStorageBlobContent -File $bacpacFileName -Container "raw" -Blob 'BingCoronavirusQuerySet/2020/QueriesByState_2020-05-01_2020-05-31.tsv' -Context $ctx

#############################

$uri = "https://raw.githubusercontent.com/CSALabsAutomation/azure-purview-labs/main/environments/env1/Artifacts/BingCoronavirusQuerySet/2020/QueriesByState_2020-06-01_2020-06-30.tsv";
$bacpacFileName = "QueriesByState_2020-06-01_2020-06-30.tsv";

$storageaccountkey = Get-AzStorageAccountKey -ResourceGroupName $Resourcegroupname -Name $RawDataLakeAccountName;

$ctx = New-AzStorageContext -StorageAccountName $RawDataLakeAccountName -StorageAccountKey $storageaccountkey.Value[0]

Invoke-WebRequest -Uri $uri -OutFile $bacpacFileName
Set-AzStorageBlobContent -File $bacpacFileName -Container "raw" -Blob 'BingCoronavirusQuerySet/2020/QueriesByState_2020-06-01_2020-06-30.tsv' -Context $ctx

#############################

$uri = "https://raw.githubusercontent.com/CSALabsAutomation/azure-purview-labs/main/environments/env1/Artifacts/BingCoronavirusQuerySet/2020/QueriesByState_2020-07-01_2020-07-31.tsv";
$bacpacFileName = "QueriesByState_2020-07-01_2020-07-31.tsv";

$storageaccountkey = Get-AzStorageAccountKey -ResourceGroupName $Resourcegroupname -Name $RawDataLakeAccountName;

$ctx = New-AzStorageContext -StorageAccountName $RawDataLakeAccountName -StorageAccountKey $storageaccountkey.Value[0]

Invoke-WebRequest -Uri $uri -OutFile $bacpacFileName
Set-AzStorageBlobContent -File $bacpacFileName -Container "raw" -Blob 'BingCoronavirusQuerySet/2020/QueriesByState_2020-07-01_2020-07-31.tsv' -Context $ctx

#############################

$uri = "https://raw.githubusercontent.com/CSALabsAutomation/azure-purview-labs/main/environments/env1/Artifacts/BingCoronavirusQuerySet/2020/QueriesByState_2020-08-01_2020-08-31.tsv";
$bacpacFileName = "QueriesByState_2020-08-01_2020-08-31.tsv";

$storageaccountkey = Get-AzStorageAccountKey -ResourceGroupName $Resourcegroupname -Name $RawDataLakeAccountName;

$ctx = New-AzStorageContext -StorageAccountName $RawDataLakeAccountName -StorageAccountKey $storageaccountkey.Value[0]

Invoke-WebRequest -Uri $uri -OutFile $bacpacFileName
Set-AzStorageBlobContent -File $bacpacFileName -Container "raw" -Blob 'BingCoronavirusQuerySet/2020/QueriesByState_2020-08-01_2020-08-31.tsv' -Context $ctx

#############################

$uri = "https://raw.githubusercontent.com/CSALabsAutomation/azure-purview-labs/main/environments/env1/Artifacts/BingCoronavirusQuerySet/2020/QueriesByState_2020-09-01_2020-09-30.tsv";
$bacpacFileName = "QueriesByState_2020-09-01_2020-09-30.tsv";

$storageaccountkey = Get-AzStorageAccountKey -ResourceGroupName $Resourcegroupname -Name $RawDataLakeAccountName;

$ctx = New-AzStorageContext -StorageAccountName $RawDataLakeAccountName -StorageAccountKey $storageaccountkey.Value[0]

Invoke-WebRequest -Uri $uri -OutFile $bacpacFileName
Set-AzStorageBlobContent -File $bacpacFileName -Container "raw" -Blob 'BingCoronavirusQuerySet/2020/QueriesByState_2020-09-01_2020-09-30.tsv' -Context $ctx

#############################

$uri = "https://raw.githubusercontent.com/CSALabsAutomation/azure-purview-labs/main/environments/env1/Artifacts/BingCoronavirusQuerySet/2020/QueriesByState_2020-10-01_2020-10-31.tsv";
$bacpacFileName = "QueriesByState_2020-10-01_2020-10-31.tsv";

$storageaccountkey = Get-AzStorageAccountKey -ResourceGroupName $Resourcegroupname -Name $RawDataLakeAccountName;
$ctx = New-AzStorageContext -StorageAccountName $RawDataLakeAccountName -StorageAccountKey $storageaccountkey.Value[0]

Invoke-WebRequest -Uri $uri -OutFile $bacpacFileName
Set-AzStorageBlobContent -File $bacpacFileName -Container "raw" -Blob 'BingCoronavirusQuerySet/2020/QueriesByState_2020-10-01_2020-10-31.tsv' -Context $ctx

#################################

$uri = "https://raw.githubusercontent.com/CSALabsAutomation/azure-purview-labs/main/environments/env1/Artifacts/BingCoronavirusQuerySet/2020/QueriesByState_2020-11-01_2020-11-30.tsv";
$bacpacFileName = "QueriesByState_2020-11-01_2020-11-30.tsv";

$storageaccountkey = Get-AzStorageAccountKey -ResourceGroupName $Resourcegroupname -Name $RawDataLakeAccountName;
$ctx = New-AzStorageContext -StorageAccountName $RawDataLakeAccountName -StorageAccountKey $storageaccountkey.Value[0]

Invoke-WebRequest -Uri $uri -OutFile $bacpacFileName
Set-AzStorageBlobContent -File $bacpacFileName -Container "raw" -Blob 'BingCoronavirusQuerySet/2020/QueriesByState_2020-11-01_2020-11-30.tsv' -Context $ctx

#################################

$uri = "https://raw.githubusercontent.com/CSALabsAutomation/azure-purview-labs/main/environments/env1/Artifacts/BingCoronavirusQuerySet/2020/QueriesByState_2020-12-01_2020-12-31.tsv";
$bacpacFileName = "QueriesByState_2020-12-01_2020-12-31.tsv";

$storageaccountkey = Get-AzStorageAccountKey -ResourceGroupName $Resourcegroupname -Name $RawDataLakeAccountName;
$ctx = New-AzStorageContext -StorageAccountName $RawDataLakeAccountName -StorageAccountKey $storageaccountkey.Value[0]

Invoke-WebRequest -Uri $uri -OutFile $bacpacFileName
Set-AzStorageBlobContent -File $bacpacFileName -Container "raw" -Blob 'BingCoronavirusQuerySet/2020/QueriesByState_2020-12-01_2020-12-31.tsv' -Context $ctx

#############################

$uri = "https://raw.githubusercontent.com/CSALabsAutomation/azure-purview-labs/main/environments/env1/Artifacts/BingCoronavirusQuerySet/2021/QueriesByCountry_2021-01-01_2021-01-31.tsv";
$bacpacFileName = "QueriesByCountry_2021-01-01_2021-01-31.tsv";

$storageaccountkey = Get-AzStorageAccountKey -ResourceGroupName $Resourcegroupname -Name $RawDataLakeAccountName;
$ctx = New-AzStorageContext -StorageAccountName $RawDataLakeAccountName -StorageAccountKey $storageaccountkey.Value[0]

Invoke-WebRequest -Uri $uri -OutFile $bacpacFileName
Set-AzStorageBlobContent -File $bacpacFileName -Container "raw" -Blob 'BingCoronavirusQuerySet/2021/QueriesByCountry_2021-01-01_2021-01-31.tsv' -Context $ctx

#################################

$uri = "https://raw.githubusercontent.com/CSALabsAutomation/azure-purview-labs/main/environments/env1/Artifacts/BingCoronavirusQuerySet/2021/QueriesByCountry_2021-02-01_2021-02-28.tsv";
$bacpacFileName = "QueriesByCountry_2021-02-01_2021-02-28.tsv";

$storageaccountkey = Get-AzStorageAccountKey -ResourceGroupName $Resourcegroupname -Name $RawDataLakeAccountName;
$ctx = New-AzStorageContext -StorageAccountName $RawDataLakeAccountName -StorageAccountKey $storageaccountkey.Value[0]

Invoke-WebRequest -Uri $uri -OutFile $bacpacFileName
Set-AzStorageBlobContent -File $bacpacFileName -Container "raw" -Blob 'BingCoronavirusQuerySet/2021/QueriesByCountry_2021-02-01_2021-02-28.tsv' -Context $ctx

#################################

$uri = "https://raw.githubusercontent.com/CSALabsAutomation/azure-purview-labs/main/environments/env1/Artifacts/BingCoronavirusQuerySet/2021/QueriesByState_2021-01-01_2021-01-31.tsv";
$bacpacFileName = "QueriesByState_2021-01-01_2021-01-31.tsv";

$storageaccountkey = Get-AzStorageAccountKey -ResourceGroupName $Resourcegroupname -Name $RawDataLakeAccountName;
$ctx = New-AzStorageContext -StorageAccountName $RawDataLakeAccountName -StorageAccountKey $storageaccountkey.Value[0]

Invoke-WebRequest -Uri $uri -OutFile $bacpacFileName
Set-AzStorageBlobContent -File $bacpacFileName -Container "raw" -Blob 'BingCoronavirusQuerySet/2021/QueriesByState_2021-01-01_2021-01-31.tsv' -Context $ctx

#################################

$uri = "https://raw.githubusercontent.com/CSALabsAutomation/azure-purview-labs/main/environments/env1/Artifacts/BingCoronavirusQuerySet/2021/QueriesByState_2021-02-01_2021-02-28.tsv";
$bacpacFileName = "QueriesByState_2021-02-01_2021-02-28.tsv";

$storageaccountkey = Get-AzStorageAccountKey -ResourceGroupName $Resourcegroupname -Name $RawDataLakeAccountName;
$ctx = New-AzStorageContext -StorageAccountName $RawDataLakeAccountName -StorageAccountKey $storageaccountkey.Value[0]

Invoke-WebRequest -Uri $uri -OutFile $bacpacFileName
Set-AzStorageBlobContent -File $bacpacFileName -Container "raw" -Blob 'BingCoronavirusQuerySet/2021/QueriesByState_2021-02-01_2021-02-28.tsv' -Context $ctx

Write-Host "file upload script completed"
