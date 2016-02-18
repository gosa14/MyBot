Func HideNotNeed()
	Switch _GUICtrlComboBox_GetCurSel($cmbSearchMode)
		Case 0
			For $i = $grpDeadBaseDeploy to $grpLiveBaseDeploy -2
				GUICtrlSetState($i, $GUI_SHOW)
			Next
			For $i = $grpLiveBaseDeploy to $grpClanCastleBal -2
				GUICtrlSetState($i, $GUI_HIDE)
			Next
			For $i = $grpDeadBaseConditions to $grpLiveBaseConditions -2
				GUICtrlSetState($i, $GUI_SHOW)
			Next
			For $i = $grpLiveBaseConditions to $grpSearchReduction -2
				GUICtrlSetState($i, $GUI_HIDE)
			Next
			cmbDBGoldElixir()
			For $i = $grpStatsDB to $grpStatsLB -2
				GUICtrlSetState($i, $GUI_SHOW)
			Next
			For $i = $grpStatsLB to $grpStatsTB -2
				GUICtrlSetState($i, $GUI_HIDE)
			Next
		Case 1
			For $i = $grpDeadBaseDeploy to $grpLiveBaseDeploy -2
				GUICtrlSetState($i, $GUI_HIDE)
			Next
			For $i = $grpLiveBaseDeploy to $grpClanCastleBal -2
				GUICtrlSetState($i, $GUI_SHOW)
			Next
			For $i = $grpDeadBaseConditions to $grpLiveBaseConditions -2
				GUICtrlSetState($i, $GUI_HIDE)
			Next
			For $i = $grpLiveBaseConditions to $grpSearchReduction -2
				GUICtrlSetState($i, $GUI_SHOW)
			Next
			cmbABGoldElixir()
			For $i = $grpStatsDB to $grpStatsLB -2
				GUICtrlSetState($i, $GUI_HIDE)
			Next
			For $i = $grpStatsLB to $grpStatsTB -2
				GUICtrlSetState($i, $GUI_SHOW)
			Next
		Case 2
			For $i = $grpDeadBaseDeploy to $grpLiveBaseDeploy -2
				GUICtrlSetState($i, $GUI_SHOW)
			Next
			For $i = $grpLiveBaseDeploy to $grpClanCastleBal -2
				GUICtrlSetState($i, $GUI_SHOW)
			Next
			For $i = $grpDeadBaseConditions to $grpLiveBaseConditions -2
				GUICtrlSetState($i, $GUI_SHOW)
			Next
			For $i = $grpLiveBaseConditions to $grpSearchReduction -2
				GUICtrlSetState($i, $GUI_SHOW)
			Next
			cmbDBGoldElixir()
			cmbABGoldElixir()
			For $i = $grpStatsDB to $grpStatsLB -2
				GUICtrlSetState($i, $GUI_SHOW)
			Next
			For $i = $grpStatsLB to $grpStatsTB -2
				GUICtrlSetState($i, $GUI_SHOW)
			Next
	EndSwitch

	If GUICtrlRead($chkBullyMode) = $GUI_CHECKED Then
		For $i = $txtATBullyMode to $grpDefenseFarming -2
			GUICtrlSetState($i, $GUI_SHOW)
		Next
		For $i = $grpStatsTB to $grpStatsTS -2
			GUICtrlSetState($i, $GUI_SHOW)
		Next
	Else
		For $i = $txtATBullyMode to $grpDefenseFarming -2
			GUICtrlSetState($i, $GUI_HIDE)
		Next
		For $i = $grpStatsTB to $grpStatsTS -2
			GUICtrlSetState($i, $GUI_HIDE)
		Next
	EndIf

	GUICtrlSetState($grpTabAdvEmpty, $GUI_SHOW)
	GUICtrlSetState($grpStatsEmpty, $GUI_SHOW)

	If GUICtrlRead($chkUnbreakable) = $GUI_CHECKED Then
		For $i = $lblUnbreakable1 to $grpTabAdvEmpty -2
			GUICtrlSetState($i, $GUI_SHOW)
		Next
	Else
		For $i = $lblUnbreakable1 to $grpTabAdvEmpty -2
			GUICtrlSetState($i, $GUI_HIDE)
		Next
	EndIf

	If GUICtrlRead($ChkSnipeWhileTrain) = $GUI_CHECKED Then
		For $i = $lblSWTTiles to $lblminArmyCapacityTHSnipe -1
			GUICtrlSetState($i, $GUI_SHOW)
		Next
	Else
		For $i = $lblSWTTiles to $lblminArmyCapacityTHSnipe -1
			GUICtrlSetState($i, $GUI_HIDE)
		Next
	EndIf

	If GUICtrlRead($chkTrophyMode) = $GUI_CHECKED Then
		For $i = $lblTHadd to $grpBullyAtkCombo -2
			GUICtrlSetState($i, $GUI_SHOW)
		Next
		cmbTSGoldElixir()
	Else
		For $i = $lblTHadd to $grpBullyAtkCombo -2
			GUICtrlSetState($i, $GUI_HIDE)
		Next
	EndIf

	If GUICtrlRead($chkTrophyMode) = $GUI_CHECKED or GUICtrlRead($ChkSnipeWhileTrain) = $GUI_CHECKED Then
		For $i = $grpStatsTS to $grpStatsEmpty -2
			GUICtrlSetState($i, $GUI_SHOW)
		Next
		GUICtrlSetState($lblminArmyCapacityTHSnipe, $GUI_SHOW)
		GUICtrlSetState($txtminArmyCapacityTHSnipe, $GUI_SHOW)
	Else
		For $i = $grpStatsTS to $grpStatsEmpty -2
			GUICtrlSetState($i, $GUI_HIDE)
		Next
		GUICtrlSetState($lblminArmyCapacityTHSnipe, $GUI_HIDE)
		GUICtrlSetState($txtminArmyCapacityTHSnipe, $GUI_HIDE)
	EndIf

	GUICtrlSetState($grpTabAdvEmpty, $GUI_HIDE)
	GUICtrlSetState($grpStatsEmpty, $GUI_HIDE)

EndFunc