from azure.storage.blob import BlobServiceClient
from datetime import datetime
import os
import shutil

acct_url = "https://tokyoolymphicdata.blob.core.windows.net"
container_name = 'web-scraping'
container_sas_key = "sp=racwdlmeo&st=2024-09-27T12:09:32Z&se=2026-09-27T20:09:32Z&spr=https&sv=2022-11-02&sr=c&sig=jhSYaHX2ARyEupmEqpQZKLKbuX4I6EuLpHg1ABdgiZg%3D"
source_dir = 'CSV2'
target_dir_name = "active_dir"
blob_service_client = BlobServiceClient(account_url= acct_url, credential=container_sas_key)
container_client = blob_service_client.get_container_client(container_name)

# Upload Files
# Create a timestamp subfolder inside the archive files
datestamp = datetime.now().strftime("%Y-%m-%d-%H:%M:%S")
az_archive_folder = f"archive/{datestamp}"
# Archive old CSV files
blobs_list = container_client.list_blobs(name_starts_with=target_dir_name)
for blob in blobs_list:
    if blob.name.lower().endswith('.csv'):
        # Get the base file name (remove any subdirectories)
        file_name = os.path.basename(blob.name)
        new_blob_name = f"{az_archive_folder}/{file_name}"
        source_blob_url = f"{acct_url}/{container_name}/{blob.name}?{container_sas_key}"
        container_client.get_blob_client(new_blob_name).start_copy_from_url(source_blob_url)
        # Delete the original blob after copying
        container_client.delete_blob(blob.name)
        # print(f"Moved {blob.name} to {new_blob_name}")
# Upload latest CSV files
for root, dirs, files in os.walk(source_dir):
    for file_name in files:
        file_path = os.path.join(root, file_name)
        blob_client = container_client.get_blob_client(f"{target_dir_name}/{file_name}")
        
        # Upload the file
        with open(file_path, "rb") as data:
            blob_client.upload_blob(data, overwrite=True)
        # print(f"Uploaded {file_name} to Azure Blob Storage")

# Download files from the container folder
# Delete the directory and its contents and create another one
if os.path.exists(target_dir_name):
    shutil.rmtree(target_dir_name)
    # print(f'Directory deleted: {target_dir_name}')
if not os.path.exists(target_dir_name):
    os.makedirs(target_dir_name)
    # print(f'Directory created: {target_dir_name}')

blobs_list = container_client.list_blobs(name_starts_with=target_dir_name)
for blob in blobs_list:
    if blob.name.lower().endswith('.csv'):
        # Get the blob client for the current blob
        blob_client = container_client.get_blob_client(blob.name)
        local_dir = os.path.join(os.getcwd(),target_dir_name)
        # Construct the local path to save the file
        local_file_path = os.path.join(local_dir, os.path.relpath(blob.name, target_dir_name))
        # Download the blob to a local file
        with open(local_file_path, "wb") as download_file:
            download_file.write(blob_client.download_blob().readall())
        # print(f"Downloaded {blob.name} to {local_file_path}")
