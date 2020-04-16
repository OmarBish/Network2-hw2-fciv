## Assignment text :

In this Assignment, you are asked to do the followings
1. Message Integrity.
2. Download fciv.exe .
3. use to generate the MD5, and SHA1. Store the resulting SHA1 and MD5 in an XML file.
4. Verify the md5 and sha1 before you make changes to the file.
5. Then make some change in the file and show that the Sha1 and md5 has changed.
** Use the test file shown in the attachemet.


# Steps:
## generate MD5 & SHA1:
to generate the MD5, and SHA1. Store the resulting SHA1 and MD5 in an XML file we can use the following command.
```shell
./fciv.exe ./tst.txt -sha1 -md5 -xml db.xml
```
this will generate MD5 and SHA1 hash . 


MD5:
> NYr0wf0/q0haLJJyyRTyMQ==

SHA1:

> Nla1XfYzAzFGzB6x3uluA1R1hOw=

and store it in db.xml

 
## check the validity of the file:
to check the validity of a file we can use this command 
```shell
./fciv.exe -v -sha1 -md5 -xml db.xml
```
if everything was good then this command will tell us that every ting is good yo go and the file wasn't modifed but if it was modifed then this command will give a list of modifed files with what the file original hash was and what it become.

# demo:
you can run the `./run.ps1` powershell script to check this process in action.

*you need to run `Set-ExecutionPolicy RemoteSigned` in powershell to enable excuting forign scripts*
 

sample code output :
```shell

  ^   ^   ^   ^   ^   ^   ^       ^
 /N\ /e\ /t\ /w\ /o\ /r\ /k\     /2\
<___X___X___X___X___X___X___>   <___>




  ^   ^   ^   ^
 /H\ /W\ /-\ /2\
<___X___X___X___>




/_____/_____/_____/_____/_____/_____/_____/


# Generate MD5, and SHA1 then Store the resulting SHA1 and MD5 in an XML file
# command:- ./fciv.exe tst.txt -sha1 -md5 -xml db.xml


/_____/_____/_____/_____/_____/_____/_____/


//
// File Checksum Integrity Verifier version 2.05.
//
Error loading XML document.
Create New XML database


/_____/_____/_____/_____/_____/_____/_____/


# Check the validity of the generated file
# command:- ./fciv.exe -v -sha1 -md5 -xml db.xml


/_____/_____/_____/_____/_____/_____/_____/


//
// File Checksum Integrity Verifier version 2.05.
//
Could not create the registry key.
Starting checksums verification : 04/16/2020 at 21h57'43

All files verified successfully

End Verification : 04/16/2020 at 21h57'43



/_____/_____/_____/_____/_____/_____/_____/


# db.xml content


/_____/_____/_____/_____/_____/_____/_____/


<?xml version="1.0" encoding="utf-8"?>
<FCIV>
        <FILE_ENTRY><name>tst.txt</name><MD5>NYr0wf0/q0haLJJyyRTyMQ==</MD5><SHA1>Nla1XfYzAzFGzB6x3uluA1R1hOw=</SHA1></FILE_ENTRY></FCIV>



/_____/_____/_____/_____/_____/_____/_____/


# Modify the file:-
# command:-Add-Content ./tst.txt 'New Text'
# command:-git diff


/_____/_____/_____/_____/_____/_____/_____/


diff --git a/tst.txt b/tst.txt
index 5ff32d0..f788240 100644
--- a/tst.txt
+++ b/tst.txt
@@ -13,4 +13,4 @@ fciv.exe -v -sha1 -xml db.xml
 99
 dd
 dgdg88
-iiiihiui
\ No newline at end of file
+iiiihiuiNew Text


/_____/_____/_____/_____/_____/_____/_____/


# Recheck the validity after update
# command:- ./fciv.exe -v -sha1 -md5 -xml db.xml


/_____/_____/_____/_____/_____/_____/_____/


//
// File Checksum Integrity Verifier version 2.05.
//
Could not create the registry key.
Starting checksums verification : 04/16/2020 at 21h57'43

List of modified files:
-----------------------
tst.txt
        Hash is         : 358af4c1fd3fab485a2c9272c914f231
        It should be    : 4c6da3f376ff78d036734fb53190c78b

tst.txt
        Hash is         : 3656b55df633033146cc1eb1dee96e03547584ec
        It should be    : 1dc7571cd477786e4648cfc7c31ae936526a7467


End Verification : 04/16/2020 at 21h57'43

HEAD is now at dab2075 add # symbol before comments
```



