#include <MsgBoxConstants.au3>
#include <StringConstants.au3>

if WinExists("[CLASS:IEFrame]") Then
   $hnd = WinGetHandle("[CLASS:IEFrame]")
   WinActivate($hnd)
   sleep(500)
   $url = WinGetText($hnd,"")
   $url = StringSplit($url,@CRLF)
   $final_url = ""
   For $i = 1 to $url[0]-1
	  if StringInStr($url[$i],"http") <> 0 Then
		 $final_url = $url[$i]
	  EndIf
   Next

   MsgBox($MB_SYSTEMMODAL,"Great!","URL is : " & $final_url)
Else
   MsgBox($MB_SYSTEMMODAL,"Oops!","Window does not exist")
EndIf

