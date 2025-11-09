$Username = 'numed.local\Administrator'
$Password = 'Banan3#14'
$Pass = ConvertTo-SecureString -AsPlainText $Password -Force
$Cred = New-Object System.Management.Automation.PSCredential -ArgumentList $Username,$Pass
Enter-PSSession -ComputerName localhost -Credential $Cred

Install-Module -Name PSWindowsUpdate
Set-ExecutionPolicy RemoteSigned
Import-Module PSWindowsUpdate
Get-WindowsUpdate
Install-WindowsUpdate



Get-Command –module PSWindowsUpdate

