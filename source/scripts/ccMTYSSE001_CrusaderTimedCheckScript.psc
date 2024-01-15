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
	int myNewCrime = (Quest.GetQuest("DES_InfamyTrackerQuest") as DES_CrimeValues).myNewCrime
	int myOldCrime = (Quest.GetQuest("DES_InfamyTrackerQuest") as DES_CrimeValues).myOldCrime
	myNewCrime = ccmtysse001_crimesharedfunctions.GetPlayerCrimeTotal()
	IF myNewCrime > myOldCrime 
		ccMTYSSE001_CrusaderGlobalInfamy.Mod(1)
	ENDIF
	ccMTYSSE001_CrusaderGlobalInfamy.SetValueInt(myNewCrime)
	if ccMTYSSE001_CrusaderGlobalInfamy.GetValueInt() > 15
		ccMTYSSE001_CrusaderRelicsShrine.Show()
		ccMTYSSE001_CrusaderGlobalMessageShown.SetValueInt(2)
		ccMTYSSE001_Quest.SetStage(10)
	endIf
	myOldCrime = myNewCrime
	RegisterForSingleUpdateGameTime(timeToCheck as Float)
endFunction

function OnEffectFinish(Actor akTarget, Actor akCaster)
	UnregisterForUpdateGameTime()
endFunction
