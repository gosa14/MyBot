; #FUNCTION# ====================================================================================================================
; Name ..........: dropSpell
; Description ...: Drops Spell, given the spell and x, y coordinates.
; Syntax ........: dropSpell($x, $y, $spell)
; Parameters ....: $x                   - X location.
;                  $y                   - Y location.
;                  $spell               - spell
;                  $number              - number to drop
; Return values .: None
; Author ........: LunaEclipse(January, 2016)
; Modified ......:
; Remarks .......: This file is part of ClashGameBot. Copyright 2015
;                  ClashGameBot is distributed under the terms of the GNU GPL
; Related .......:
; Link ..........:
; Example .......: No
; ===============================================================================================================================

Func dropSpell($x, $y, $spell = -1, $number = 1) ; Drop Spell
	Local $result = False
	Local $aDeployButtonPositions = getUnitLocationArray()
	Local $barPosition = $aDeployButtonPositions[$spell]
	Local $barCCSpell = $aDeployButtonPositions[$eCCSpell]
	Local $spellCount = unitCount($spell)
	Local $ccSpellCount = unitCount($eCCSpell)

	If $spellCount < $number Then
		SetLog("Only " & $spellCount & " " & getTranslatedTroopName($spell) & " available.  Waiting for " & $number & ".")
		Return $result
	EndIf

	; Check to see if we have a spell in the CC and it hasn't be used
	If $barCCSpell <> -1 And getCCSpellType() = $spell And $ccSpellCount > 0 Then
		If _Sleep(100) Then Return
		If $debugSetlog = 1 Then SetLog("Dropping Clan Castle " & getTranslatedTroopName($spell) & " in slot " & $barCCSpell, $COLOR_BLUE)

		Click(GetXPosOfArmySlot($barCCSpell, 68) + 80, 595 + $bottomOffsetY, 1, 0, "#0094")
		SetLog("Dropping " & getTranslatedTroopName($spell) & " in the Clan Castle", $COLOR_RED)
		Click($x, $y, 1, 50)

		If $barPosition <> -1 And $number > 1 Then ; Need to use standard spells as well as clan castle spell.
			If _Sleep(100) Then Return
			If $debugSetlog = 1 Then SetLog("Dropping " & getTranslatedTroopName($spell) & " in slot " & $barPosition, $COLOR_BLUE)

			Click(GetXPosOfArmySlot($barPosition, 68), 595 + $bottomOffsetY, 1, 0, "#0094")
			SetLog("Dropping " & $number & " " & getTranslatedTroopName($spell) & " including the Clan Castle spell.", $COLOR_RED)
			For $j = 1 To $ccSpellCount
				Click($x, $y, 1, 50)
				If _Sleep(100) Then Return
			Next

			; Cast the number of spells requested minus the clan castle spell already cast.
			For $j = 1 To $number - $ccSpellCount
				Click($x, $y, 1, 50)
				If _Sleep(100) Then Return
			Next
		EndIf

		$result = True
	ElseIf $barPosition <> -1 And $spellCount > 0 Then ; Check to see if we have a spell trained
		If _Sleep(100) Then Return
		If $debugSetlog = 1 Then SetLog("Dropping " & getTranslatedTroopName($spell) & " in slot " & $barPosition, $COLOR_BLUE)

		Click(GetXPosOfArmySlot($barPosition, 68), 595 + $bottomOffsetY, 1, 0, "#0094")
		SetLog("Dropping " & $number & " " & getTranslatedTroopName($spell), $COLOR_RED)
		; Cast the number of spells requested.
		For $j = 1 To $number
			Click($x, $y, 1, 50)
			If _Sleep(100) Then Return
		Next

		$result = True
	EndIf

	Return $result
EndFunc   ;==>dropSpell
