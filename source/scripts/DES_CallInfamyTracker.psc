Scriptname DES_CallInfamyTracker extends Quest  

Quest Property DES_InfamyTrackerQuest auto

Event OnStoryKillActor(ObjectReference akVictim, ObjectReference akKiller, Location akLocation, int aiCrimeStatus, \
  int aiRelationshipRank)	
	if aiCrimeStatus
		(DES_InfamyTrackerQuest as DES_CrimeValues).modInfamy(5)
	endIf
	stop()
endEvent

Event OnStoryAssaultActor(ObjectReference akVictim, ObjectReference akAttacker, Location akLocation, int aiCrime)
 	if aiCrime
		(DES_InfamyTrackerQuest as DES_CrimeValues).modInfamy(2)		
	endIf
	stop()
endEvent

Event OnStoryAddToPlayer(ObjectReference akOwner, ObjectReference akContainer, Location akLocation, Form akItemBase, \
  int aiAcquireType)	
	if aiAcquireType == 1 ; Steal
		(DES_InfamyTrackerQuest as DES_CrimeValues).modInfamy(1)
	endIf
	stop()
endEvent

Event OnStoryEscapeJail(Location akLocation, Form akCrimeGroup)	
	(DES_InfamyTrackerQuest as DES_CrimeValues).modInfamy(1)
	stop()
endEvent