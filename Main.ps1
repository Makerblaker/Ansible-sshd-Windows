# Install OpenSSH
Add-WindowsCapability -Online -Name OpenSSH.Server

# Set service to automatic and start
Set-Service sshd -StartupType Automatic

# Set service to automatic and start
Set-Service sshd -StartupType Automatic

# Configure PowerShell as the default shell
New-ItemProperty -Path "HKLM:\SOFTWARE\OpenSSH" -Name DefaultShell -Value "$Env:SystemRoot\System32\WindowsPowerShell\v1.0\powershell.exe" -PropertyType String -Force

#Start SSHd
Start-Service sshd