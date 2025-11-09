$dzisiejszaData = Get-Date -Format "yyyy-MM-dd"
Get-ChildItem -Path "C:\Users\piotr\Downloads\*.txt" | Where-Object {$_.CreationTime.Date -eq $dzisiejszaData} | Rename-Item -NewName {($_.name -replace '\.txt$', '.klx')}
