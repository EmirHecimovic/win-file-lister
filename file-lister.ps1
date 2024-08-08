# PowerShell script to list files in specific directories and external drives

# Define the output file on the desktop
$outputFile = [System.IO.Path]::Combine([System.Environment]::GetFolderPath("Desktop"), "files_list.txt")

# Initialize or clear the output file
"" > $outputFile

# List files on the Desktop
$desktopPath = [System.Environment]::GetFolderPath("Desktop")
Get-ChildItem -Path $desktopPath -File -Recurse -ErrorAction SilentlyContinue | Select-Object FullName | Out-File -Append -FilePath $outputFile

# List files in the Downloads folder
$downloadsPath = [System.IO.Path]::Combine([System.Environment]::GetFolderPath("UserProfile"), "Downloads")
Get-ChildItem -Path $downloadsPath -File -Recurse -ErrorAction SilentlyContinue | Select-Object FullName | Out-File -Append -FilePath $outputFile

# List files in the Documents folder
$documentsPath = [System.Environment]::GetFolderPath("MyDocuments")
Get-ChildItem -Path $documentsPath -File -Recurse -ErrorAction SilentlyContinue | Select-Object FullName | Out-File -Append -FilePath $outputFile

# List files on external drives
$externalDrives = Get-PSDrive -PSProvider FileSystem | Where-Object { $_.Root -match "^[D-Z]:" }
foreach ($drive in $externalDrives) {
    Get-ChildItem -Path $drive.Root -File -Recurse -ErrorAction SilentlyContinue | Select-Object FullName | Out-File -Append -FilePath $outputFile
}

# Notify user of completion
Write-Output "File listing complete. Output saved to $outputFile"