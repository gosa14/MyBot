Func Boju_readConfig()
	If FileExists($config) Then
		;Mod AttackHour
		$iPlannedAttackHoursEnable 		= IniRead($config, "Boju", "AttackHoursEnable", "0")
		$iPlannedAttackHours 			= StringSplit(IniRead($config, "Boju", "AttackHours", "1|1|1|1|1|1|1|1|1|1|1|1|1|1|1|1|1|1|1|1|1|1|1|1|1"),"|", $STR_NOCOUNT)
		;--> Mod AttackHour
	Else
		Return False
	EndIf
EndFunc