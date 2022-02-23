@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

rem Set values for your storage account
set subscription_id=0e7ce310-05c0-4edf-a818-cc0fc23ed4a6
set azure_storage_account=ai102form1438430408
set azure_storage_key=NWZz1qvi833lnjXPBCYqDrzie4oEwd3cFOo5rq0gnuBbYFHguuHqYjC3KpD0mgRfBbmue7QRl4CR/BuS7HjwcQ==


echo Creating container...
call az storage container create --account-name !azure_storage_account! --subscription !subscription_id! --name margies --public-access blob --auth-mode key --account-key !azure_storage_key! --output none

echo Uploading files...
call az storage blob upload-batch -d margies -s data --account-name !azure_storage_account! --auth-mode key --account-key !azure_storage_key!  --output none
