Scriptname pauseMenuAfterLoadAliasScript extends ReferenceAlias  
{pauses after load}

event OnPlayerLoadGame()
    OnMenuOpen("Loading Menu")
    SetUp()
endEvent

event OnInit()
    OnMenuOpen("Loading Menu")
    SetUp()
endEvent

function SetUp()
    RegisterForMenu("Loading Menu")
endFunction

event OnMenuOpen(String MenuName)
    GoToState("Paused")
    Utility.WaitMenuMode(0.5)
    if Game.IsJournalControlsEnabled() || UI.IsMenuOpen("RaceSex Menu")
        UI.OpenCustomMenu("alternativePauseMenu")
        Utility.Wait(1)
    endIf
    GoToState("")
endEvent

state Paused
    event OnMenuOpen(String MenuName)
    endEvent
endState