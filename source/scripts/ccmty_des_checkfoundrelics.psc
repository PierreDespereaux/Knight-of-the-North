Scriptname ccMTY_DES_CheckFoundRelics extends ReferenceAlias  

event onRead()

Utility.Wait(5.0)

	if PlayerRef.getItemCount(Alias_CrusaderMace.getReference()) > 0
		myQST.SetStage(10)
	endif

	if PlayerRef.getItemCount(Alias_CrusaderSword.getReference()) > 0
		myQST.SetStage(20)
	endif

	if PlayerRef.getItemCount(Alias_CrusaderBoots.getReference()) > 0
		myQST.SetStage(30)
	endif

	if PlayerRef.getItemCount(Alias_CrusaderArmor.getReference()) > 0
		myQST.SetStage(40)
	endIf

	if PlayerRef.getItemCount(Alias_CrusaderGloves.getReference()) > 0
		myQST.SetStage(50)
	endif

	if PlayerRef.getItemCount(Alias_CrusaderHelm.getReference()) > 0
		myQST.SetStage(60)
	endif

	if PlayerRef.getItemCount(Alias_CrusaderShield.getReference()) > 0
		myQST.SetStage(70)
	endif

endevent

Quest Property myQST  Auto  

ReferenceAlias Property Alias_CrusaderMace Auto

ReferenceAlias Property Alias_CrusaderSword Auto

ReferenceAlias Property Alias_CrusaderBoots Auto

ReferenceAlias Property Alias_CrusaderArmor Auto

ReferenceAlias Property Alias_CrusaderGloves Auto

ReferenceAlias Property Alias_CrusaderHelm Auto

ReferenceAlias Property Alias_CrusaderShield Auto

Actor Property PlayerRef Auto