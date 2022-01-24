Scriptname pauseMenuAfterLoadAliasScript extends ReferenceAlias  
{pauses after load}

bool b_firstload = true

event OnPlayerLoadGame()
	GoToState("Paused")
	OnMenuOpen("Loading Menu")
	Utility.Wait(1)
	GoToState("")
	SetUp()
endEvent

event OnInit()
	SetUp()
endEvent

function SetUp()
	RegisterForMenu("Loading Menu")
endFunction

event OnMenuOpen(String MenuName)
	GoToState("Paused")
	If (!b_firstLoad)
		if Game.IsJournalControlsEnabled() || UI.IsMenuOpen("RaceSex Menu")
			Utility.Wait(1)
			UI.OpenCustomMenu("alternativePauseMenu")
			Utility.WaitMenuMode(1.7)
            UI.CloseCustomMenu()
		endIf
	else
		b_firstLoad = false
	endif
	GoToState("")
endEvent

state Paused
	event OnMenuOpen(String MenuName)
	endEvent
endState