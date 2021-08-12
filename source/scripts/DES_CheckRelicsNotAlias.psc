Scriptname DES_CheckRelicsNotAlias extends ObjectReference  

event onRead()

Utility.Wait(5.0)

	if PlayerRef.getItemCount(CrusaderMace) > 0
		myQST.SetStage(10)
	endif

	if PlayerRef.getItemCount(CrusaderSword) > 0
		myQST.SetStage(20)
	endif

	if PlayerRef.getItemCount(CrusaderBoots) > 0
		myQST.SetStage(30)
	endif

	if PlayerRef.getItemCount(CrusaderArmor) > 0
		myQST.SetStage(40)
	endIf

	if PlayerRef.getItemCount(CrusaderGloves) > 0
		myQST.SetStage(50)
	endif

	if PlayerRef.getItemCount(CrusaderHelm) > 0
		myQST.SetStage(60)
	endif

	if PlayerRef.getItemCount(CrusaderShield) > 0
		myQST.SetStage(70)
	endif

endevent

Quest Property myQST  Auto  

Weapon  Property CrusaderMace Auto

Weapon  Property CrusaderSword Auto

Armor  Property CrusaderBoots Auto

Armor  Property CrusaderArmor Auto

Armor  Property CrusaderGloves Auto

Armor  Property CrusaderHelm Auto

Armor  Property CrusaderShield Auto

Actor Property PlayerRef Auto
