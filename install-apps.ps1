param(
    [string]$filePath
)

# Ask for confirmation before proceeding
$confirmation = Read-Host "This script will install the applications listed in $filePath. Do you want to continue? (y/n)"
if ($confirmation -ne 'y') {
    Write-Host "Installation cancelled."
    exit
}

# Read the application names from the file specified by the user
$applications = Get-Content -Path $filePath

# Install each application using Chocolatey
foreach ($app in $applications) {
    Write-Host "Installing $app..."
    choco install $app -y
}

Write-Host "All applications have been installed."