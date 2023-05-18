# set PowerShell to UTF-8
[console]::InputEncoding = [console]::OutputEncoding = New-Object System.Text.UTF8Encoding

Import-Module posh-git
$omp_config = Join-Path $PSScriptRoot ".\saingchildren.omp.json"
oh-my-posh --init --shell pwsh --config $omp_config | Invoke-Expression

Import-Module -Name Terminal-Icons


# Env
$env:GIT_SSH = "C:\Windows\system32\OpenSSH\ssh.exe"

function codeFile { set-location "D:\code-file" }
function reactFile { set-location "D:\code-file\react_project" }
function sicHomePage { set-location "D:\code-file\react_project\sic-homepage"}
# Alias
Set-Alias -Name vim -Value nvim
Set-Alias tig 'C:\Program Files\Git\usr\bin\tig.exe'
Set-Alias less 'C:\Program Files\Git\usr\bin\less.exe'
Set-Alias cf codeFile
Set-Alias rf reactFile
Set-Alias sh sicHomePage

# Utilities
function which ($command) {
  Get-Command -Name $command -ErrorAction SilentlyContinue |
    Select-Object -ExpandProperty Path -ErrorAction SilentlyContinue
}
