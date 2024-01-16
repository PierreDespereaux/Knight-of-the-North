scriptName ccMTYSSE001_CrusaderTimedCheckScript extends ActiveMagicEffect

globalvariable property ccMTYSSE001_CrusaderGlobalInfamy auto
Int property timeToCheck auto
globalvariable property ccMTYSSE001_CrusaderGlobalMessageShown auto
message property ccMTYSSE001_CrusaderRelicsShrine auto
Int property infamyUnequipNumber auto
quest property ccMTYSSE001_Quest auto
Int property infamyWarningNumber auto

function OnEffectStart(Actor akTarget, Actor akCaster)
	RegisterForSingleUpdateGameTime(timeToCheck as Float)
endFunction

function OnUpdateGameTime()
	Quest InfamyQuest = Game.GetFormFromFile(0x846, "Knight of the North.esp") As Quest
	int myNewCrime = (InfamyQuest as DES_CrimeValues).myNewCrime
	int myOldCrime = (InfamyQuest as DES_CrimeValues).myOldCrime
	IF myNewCrime > myOldCrime 
		int i = myNewCrime - myOldCrime
		ccMTYSSE001_CrusaderGlobalInfamy.Mod(i)
	ENDIF
	ccMTYSSE001_CrusaderGlobalInfamy.SetValueInt(myNewCrime)
	if ccMTYSSE001_CrusaderGlobalInfamy.GetValueInt() > 15
		IF !ccMTYSSE001_Quest.IsRunning()
			ccMTYSSE001_CrusaderRelicsShrine.Show()
			ccMTYSSE001_CrusaderGlobalMessageShown.SetValueInt(2)
			ccMTYSSE001_Quest.SetStage(10)
		ENDIF
	endIf
	myOldCrime = myNewCrime
	RegisterForSingleUpdateGameTime(timeToCheck as Float)
endFunction

function OnEffectFinish(Actor akTarget, Actor akCaster)
	UnregisterForUpdateGameTime()
endFunction
