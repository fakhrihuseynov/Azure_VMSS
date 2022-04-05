Invoke-Item 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Accessories\Paint.lnk'
Invoke-Item "C:\ProgramData\Microsoft\Windows\Start Menu\Docker Desktop.lnk"

Get-ChildItem "C:\ProgramData\Microsoft\Windows\Start Menu\"
mdir "C:\Users\epam_admin\Desktop\test"

C:\ProgramData\Microsoft\Windows\Start Menu

Start-Process 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Accessories\Paint.lnk'

powershell.exe -executionpolicy 


powershell.exe runas /noprofile /user:localhost\\epam_admin start-process 'C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Accessories\Paint.lnk'

new-item "C:\Users\epam_admin\Desktop\test" -itemtype directory




Invoke-Item "C:\ProgramData\Microsoft\Windows\Start Menu\Docker Desktop.lnk"

$c = Get-Credential -Credential epam_admin
$c.UserName



