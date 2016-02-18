Func Boju_saveConfig()
	FileOpen($config, $FO_UTF16_LE + $FO_APPEND)
	;Mod AttackHour
	Local $string = ""
	For $i = 0 To 23
		If GUICtrlRead(Eval("chkAttackHours" & $i)) = $GUI_CHECKED Then
			$string &= "1|"
		Else
			$string &= "0|"
		EndIf
	Next
	IniWrite($config, "Boju", "AttackHours", $string)

	If GUICtrlRead($chkAttackHours) = $GUI_CHECKED Then
		IniWrite($config, "Boju", "AttackHoursEnable", 1)
	Else
		IniWrite($config, "Boju", "AttackHoursEnable", 0)
	EndIf
	;--> Mod AttackHour
		FileClose($config)
EndFunc