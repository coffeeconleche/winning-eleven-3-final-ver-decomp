[CmdletBinding()]
param(
    [Parameter()]
    [string] $Bios
)

$ErrorActionPreference = "Stop"
$projectRoot = (Resolve-Path -LiteralPath (Join-Path $PSScriptRoot "..")).Path
$emulatorDir = Join-Path $projectRoot "tools\pcsx-redux-bin"
$emulator = Join-Path $emulatorDir "pcsx-redux.exe"
$discDir = Join-Path $projectRoot "extracted\disc"

if (-not (Test-Path -LiteralPath $emulator -PathType Leaf)) {
    throw "PCSX-Redux binary is missing: $emulator"
}

$cueFiles = @(Get-ChildItem -LiteralPath $discDir -File -Filter "*.cue")
if ($cueFiles.Count -ne 1) {
    throw "Expected exactly one CUE file in $discDir; found $($cueFiles.Count)"
}

if ($Bios) {
    $biosPath = (Resolve-Path -LiteralPath $Bios).Path
} else {
    $biosPath = Join-Path $emulatorDir "openbios.bin"
}

if (-not (Test-Path -LiteralPath $biosPath -PathType Leaf)) {
    throw "BIOS file is missing: $biosPath"
}

$logPath = Join-Path $projectRoot "extracted\pcsx-redux.log"
Write-Host "PCSX-Redux: $emulator"
Write-Host "BIOS:       $biosPath"
Write-Host "Disc:       $($cueFiles[0].FullName)"
Write-Host "Log:        $logPath"

Push-Location -LiteralPath $emulatorDir
try {
    & $emulator `
        -bios $biosPath `
        -iso $cueFiles[0].FullName `
        -webserver `
        -gdb `
        -gdb-port 3333 `
        -stdout `
        -logfile $logPath `
        -run
} finally {
    Pop-Location
}
