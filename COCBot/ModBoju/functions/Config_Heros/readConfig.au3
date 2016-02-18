Func Boju_readConfig_Heros()
	If FileExists($config) Then
		$KingWait = IniRead($config, "Boju", "KingWait", "0")
		$QueenWait = IniRead($config, "Boju", "QueenWait", "0")
		$WardenWait = IniRead($config, "Boju", "WardenWait", "0")
	Else
		Return False
	EndIf
EndFunc