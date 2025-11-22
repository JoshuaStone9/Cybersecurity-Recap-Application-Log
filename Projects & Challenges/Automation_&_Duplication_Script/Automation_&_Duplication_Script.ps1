function Write-Log {
    param (
        [string]$Message,
        [string]$LogFile = "automation_log.txt"
    )

    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    $logEntry = "$timestamp - $Message"
    Add-Content -Path $LogFile -Value $logEntry
}

function Duplicate-Files {
    param (
        [string]$SourceDirectory = "C:\SBS\DataToBeDuplicated",
        [string]$DestinationDirectory = "D:\SBS\DuplicatedData",
        [string]$FileExtension = "*.*",
    )

    if (-Not (Test-Path -Path $SourceDirectory)) {
        Write-Log -Message "Source directory '$SourceDirectory' does not exist. Aborting duplication."
        return
    }

    if (-Not (Get-ChildItem -Path $SourceDirectory)) {
        Write-Log -Message "No files found in source directory '$SourceDirectory'. Aborting duplication."
        return
    }

    if (-Not (Test-Path -Path $DestinationDirectory)) {
        New-Item -ItemType Directory -Path $DestinationDirectory | Out-Null
        Write-Log -Message "Created destination directory '$DestinationDirectory'. Proceeding with duplication."
    }

    $files = Get-ChildItem -Path $SourceDirectory -Filter $FileExtension

    foreach ($file in $files) {
        $destPath = Join-Path -Path $DestinationDirectory -ChildPath $file.Name
        Copy-Item -Path $file.FullName -Destination $destPath
        Write-Log -Message "Copied '$($file.FullName)' to '$destPath'."
    }
}