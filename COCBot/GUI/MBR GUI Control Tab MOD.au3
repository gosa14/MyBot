; #FUNCTION# ====================================================================================================================
; Name ..........: MBR GUI Controls Tab MOD
; Description ...: This file Includes GUI Design
; Syntax ........:
; Parameters ....: None
; Return values .: None
; Author ........: LunaEclipse(February, 2016)
; Modified ......:
; Remarks .......: This file is part of MyBot, previously known as ClashGameBot. Copyright 2015
;                  MyBot is distributed under the terms of the GNU GPL
; Related .......:
; Link ..........: https://github.com/MyBotRun/MyBot/wiki
; Example .......: No
; ===============================================================================================================================

Func chkChangeFF()
	If GUICtrlRead($chkChangeFF) = $GUI_CHECKED Then
		$useFFBarchST = 1
	Else
		$useFFBarchST = 0
	EndIf
 EndFunc   ;==>chkChangeFF

Func txtPercentCollectors()
	$percentCollectors = GUICtrlRead($txtPercentCollectors)
EndFunc   ;==>txtPercentCollectors

Func txtDistance()
	$redlineDistance = GUICtrlRead($txtDistance)
EndFunc   ;==>txtDistance

Func chkFastADBClicks()
	If GUICtrlRead($chkFastADBClicks) = $GUI_CHECKED Then
		$AndroidAdbClicksEnabled = True
	Else
		$AndroidAdbClicksEnabled = False
	EndIf
EndFunc   ;==>chkFastADBClicks