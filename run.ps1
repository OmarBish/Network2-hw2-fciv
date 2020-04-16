Write-Host "

  ^   ^   ^   ^   ^   ^   ^       ^  
 /N\ /e\ /t\ /w\ /o\ /r\ /k\     /2\ 
<___X___X___X___X___X___X___>   <___>

"
Write-Host "

  ^   ^   ^   ^  
 /H\ /W\ /-\ /2\ 
<___X___X___X___>

"
Write-Host "

/_____/_____/_____/_____/_____/_____/_____/
                                           
"
Write-Host "Generate MD5, and SHA1 then Store the resulting SHA1 and MD5 in an XML file"
Write-Host "command:- ./fciv.exe tst.txt -sha1 -xml db.xml "
Write-Host "

/_____/_____/_____/_____/_____/_____/_____/
                                           
"
./fciv.exe tst.txt -sha1 -xml db.xml
Write-Host "

/_____/_____/_____/_____/_____/_____/_____/
                                           
"
Write-Host "Check the validity of the generated file"
Write-Host "command:- ./fciv.exe -v -sha1 -xml db.xml"
Write-Host "

/_____/_____/_____/_____/_____/_____/_____/
                                           
"
./fciv.exe -v -sha1 -xml db.xml


Write-Host "db.xml content"
Write-Host "

/_____/_____/_____/_____/_____/_____/_____/
                                           
"
more ./db.xml

Write-Host "

/_____/_____/_____/_____/_____/_____/_____/
                                           
"
Write-Host "Modify the file:- "
Write-Host "command:-Add-Content ./tst.txt 'New Text'"
Write-Host "command:-git diff"
Write-Host "

/_____/_____/_____/_____/_____/_____/_____/
                                           
"

Add-Content ./tst.txt "New Text"
git diff

Write-Host "

/_____/_____/_____/_____/_____/_____/_____/
                                           
"
Write-Host "Recheck the validity after update"
Write-Host "command:- ./fciv.exe -v -sha1 -xml db.xml"
Write-Host "

/_____/_____/_____/_____/_____/_____/_____/
                                           
"
./fciv.exe -v -sha1 -xml db.xml
git reset --hard HEAD 
Remove-Item './db.xml'
