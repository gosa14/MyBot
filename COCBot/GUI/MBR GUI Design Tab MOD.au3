; #FUNCTION# ====================================================================================================================
; Name ..........: MBR GUI Design Tab MOD
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

$tabMOD = GUICtrlCreateTabItem("MOD")
	; Save for Collector Settings
	Local $x = 35, $y = 265
	$grpSaveTroops = GUICtrlCreateGroup("Save Troops for Collectors", $x - 20, $y - 20, 440, 70)
		$chkChangeFF = GUICtrlCreateCheckbox("Use Multi Finger", $x - 10, $y - 5, -1, -1)
			$txtTip = "Change to Multi Finger if less than " & $percentCollectors & "% of collectors near RED LINE." & @CRLF & _
					  "     This will switch to 0 delay for troops for a fast deployment."
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetOnEvent(-1, "chkChangeFF")
		$lblChangeFF = GUICtrlCreateLabel("Minimum near Red Line:", $x + 105, $y - 2, 125, -1, $SS_RIGHT)
		$txtPercentCollectors = GUICtrlCreateInput("80", $x + 235, $y - 5, 35, 21, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
			$txtTip = "Suggestions: " & @CRLF & _ 
					  "     Barch lvl. 6 and above use 70%." & @CRLF & _ 
					  "     Barch lvl. 5 use 80%." & @CRLF & _ 
					  "     Barch lvl. 4 and below use 90%."
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetLimit(-1, 100)
			GUICtrlSetOnEvent(-1, "txtPercentCollectors")
		$lblChangeFFPercent = GUICtrlCreateLabel("% Collectors.", $x + 275, $y - 2, -1, -1)
		$lblDistance = GUICtrlCreateLabel("Maximum Distance to Redline:", $x - 10, $y + 24, 240, -1, $SS_RIGHT)
		$txtDistance = GUICtrlCreateInput("50", $x + 235, $y + 21, 35, 21, BitOR($GUI_SS_DEFAULT_INPUT, $ES_CENTER, $ES_NUMBER))
			$txtTip = "Maximum number of pixels between the collector and the Redline." & @CRLF & _ 
					  "     Recommended: 50 pixels."
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetLimit(-1, 100)
			GUICtrlSetOnEvent(-1, "txtDistance")
		$lblDistancePixels = GUICtrlCreateLabel("pixels.", $x + 275, $y + 24, -1, -1)
	GUICtrlCreateGroup("", -99, -99, 1, 1)
	
	; Misc Battle Settings
	Local $x = 35, $y = 340
	$grpDontEndBattle = GUICtrlCreateGroup("Miscellaneous Battle Settings", $x - 20, $y - 20, 440, 45)
		$chkFastADBClicks = GUICtrlCreateCheckbox("Enable Fast ADB Clicks", $x - 10, $y - 5, -1, -1)
			$txtTip = "Tick this to enable faster ADB deployment for MEmu and Droid4x in Multi-finger mode." & @CRLF & @CRLF & _ 
				      "     WARNING:  This is experimental, if you have issues with deployment, disable it."
			GUICtrlSetTip(-1, $txtTip)
			GUICtrlSetOnEvent(-1, "chkFastADBClicks")
	GUICtrlCreateGroup("", -99, -99, 1, 1)
GUICtrlCreateTabItem("")