Func Boju_applyConfig()
	;Mod AttackHour
	If $iPlannedAttackHoursEnable = 1 Then
		GUICtrlSetState($chkAttackHours, $GUI_CHECKED)
	Else
		GUICtrlSetState($chkAttackHours, $GUI_UNCHECKED)
	EndIf
	chkAttackHours()
	For $i = 0 To 23
		If $iPlannedDonateHours[$i] = 1 Then
			GUICtrlSetState(Eval("chkDonateHours" & $i), $GUI_CHECKED)
		Else
			GUICtrlSetState(Eval("chkDonateHours" & $i), $GUI_UNCHECKED)
		EndIf
	Next
	For $i = 0 To 23
		If $iPlannedAttackHours[$i] = '1' Then
			GUICtrlSetState(Eval("chkAttackHours" & $i), $GUI_CHECKED)
		Else
			GUICtrlSetState(Eval("chkAttackHours" & $i), $GUI_UNCHECKED)
		EndIf
	Next
	;--> Mod AttackHour
EndFunc