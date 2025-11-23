function Write-Log {
    param (
        [string]$Message,
        [string]$LogFile = "C:\Users\SBSEmployee001\Automation_Logs\automation_log.txt"
    )

    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
    $logEntry = "$timestamp - $Message"
    Add-Content -Path $LogFile -Value $logEntry
}

function anonymiseData {
    param (
        [string]$SourceFile,
        [string]$DestinationFile
    )

    try {
        # Try reading as text
        $content = Get-Content -Path $SourceFile -Raw -ErrorAction Stop
    } catch {
        # Treat as binary/unreadable and copy without changes
        Write-Log -Message "Binary or unreadable file '$SourceFile'. Copying without anonymisation."
        Copy-Item -Path $SourceFile -Destination $DestinationFile -Force
        return $false
    }

    # Simple anonymisation patterns (adjust/add rules as needed for SBS data)
    $patterns = @{
        'EMAIL' = '\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}\b'
        'SSN'   = '\b\d{3}-\d{2}-\d{4}\b'
        'IP'    = '\b(?:\d{1,3}\.){3}\d{1,3}\b'
        'PHONE' = '\b\(?\d{3}\)?[ -.]?\d{3}[ -.]?\d{4}\b'
        'GUID'  = '\b[a-fA-F0-9]{8}(-[a-fA-F0-9]{4}){3}-[a-fA-F0-9]{12}\b'
        'CC'    = '(?<!\d)(?:\d[ -]*?){13,16}(?!\d)'
    }

    $replacements = @{
        'EMAIL' = '[REDACTED_EMAIL]'
        'SSN'   = '[REDACTED_SSN]'
        'IP'    = '[REDACTED_IP]'
        'PHONE' = '[REDACTED_PHONE]'
        'GUID'  = '[REDACTED_GUID]'
        'CC'    = '[REDACTED_CC]'
    }

    foreach ($k in $patterns.Keys) {
        try {
            $content = [regex]::Replace($content, $patterns[$k], $replacements[$k])
        } catch {
            Write-Log -Message "Regex replace error for pattern $k on file '$SourceFile': $_"
        }
    }

    try {
        # Write anonymised content. Use -Force to overwrite if needed.
        Set-Content -Path $DestinationFile -Value $content -Encoding UTF8 -Force
        # Preserve timestamp where possible
        try { (Get-Item $DestinationFile).LastWriteTime = (Get-Item $SourceFile).LastWriteTime } catch {}
        Write-Log -Message "Anonymised and wrote '$SourceFile' -> '$DestinationFile'."
        return $true
    } catch {
        Write-Log -Message "Failed to write anonymised file '$DestinationFile': $_"
        return $false
    }
}

function Duplicate-Files {
    param (
        [string]$SourceDirectory = "C:\SBS\DataToBeDuplicated",
        [string]$DestinationDirectory = "D:\SBS\DuplicatedData",
        [string]$FileExtension = "*.*"
    )

    if ($DestinationDirectory -notlike "\\*") {
    Write-Log -Message "Destination '$DestinationDirectory' is not a UNC path. Aborting for security."
    return
    }

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

        # Attempt to anonymise and write to destination. anonymiseData will copy binary files.
        $result = anonymiseData -SourceFile $file.FullName -DestinationFile $destPath

        if ($result) {
            # anonymiseData logged success
            continue
        } else {
            # If anonymiseData returned $false it already copied the file or failed; log if needed
            Write-Log -Message "Processed (copied without anonymisation) '$($file.FullName)' -> '$destPath'."
        }
    }
}
