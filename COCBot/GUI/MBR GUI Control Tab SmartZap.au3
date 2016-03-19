; #FUNCTION# ====================================================================================================================
; Name ..........: MBR GUI Controls Tab SmartZap
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

Func SmartLightSpell()
	If GUICtrlRead($chkSmartLightSpell) = $GUI_CHECKED Then
		GUICtrlSetState($chkSmartZapDB, $GUI_ENABLE)
		GUICtrlSetState($txtMinDark, $GUI_ENABLE)
		$ichkSmartZap = 1
	Else
		GUICtrlSetState($chkSmartZapDB, $GUI_DISABLE)
		GUICtrlSetState($txtMinDark, $GUI_DISABLE)
		$ichkSmartZap = 0
	EndIf
 EndFunc   ;==>SmartLightSpell

Func SmartZapDB()
	If GUICtrlRead($chkSmartZapDB) = $GUI_CHECKED Then
		$ichkSmartZapDB = 1
	Else
		$ichkSmartZapDB = 0
	EndIf
EndFunc   ;==>SmartZapDB

Func txtMinDark()
	$itxtMinDE = GUICtrlRead($txtMinDark)
EndFunc   ;==>txtMinDark