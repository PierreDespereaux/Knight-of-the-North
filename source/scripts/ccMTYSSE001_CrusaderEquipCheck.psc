scriptName ccMTYSSE001_CrusaderEquipCheck extends ObjectReference

globalvariable property ccMTYSSE001_CrusaderGlobalMessageShown auto
message property ccMTYSSE001_CrusaderRelicsShrine auto
quest property ccMTYSSE001_Quest auto
globalvariable property ccMTYSSE001_CrusaderGlobalInfamy auto

function OnEquipped(Actor akActor)
	int myNewCrime = (Quest.GetQuest("DES_InfamyTrackerQuest") as DES_CrimeValues).myNewCrime
	int myOldCrime = (Quest.GetQuest("DES_InfamyTrackerQuest") as DES_CrimeValues).myOldCrime
	if akActor == game.GetPlayer()
		myNewCrime = ccmtysse001_crimesharedfunctions.GetPlayerCrimeTotal()
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
	endIf
endFunction
