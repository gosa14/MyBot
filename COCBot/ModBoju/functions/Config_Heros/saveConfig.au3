Func Boju_saveConfig_Heros()
	FileOpen($config, $FO_UTF16_LE + $FO_APPEND)
	If GUICtrlRead($chkKingWait) = $GUI_CHECKED Then
		IniWrite($config, "Boju", "KingWait", 1)
	Else
		IniWrite($config, "Boju", "KingWait", 0)
	EndIf
	If GUICtrlRead($chkQueenWait) = $GUI_CHECKED Then
		IniWrite($config, "Boju", "QueenWait", 1)
	Else
		IniWrite($config, "Boju", "QueenWait", 0)
	EndIf
	If GUICtrlRead($chkWardenWait) = $GUI_CHECKED Then
		IniWrite($config, "Boju", "WardenWait", 1)
	Else
		IniWrite($config, "Boju", "WardenWait", 0)
	EndIf
	FileClose($config)
EndFunc