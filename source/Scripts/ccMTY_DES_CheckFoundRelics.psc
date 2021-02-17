Scriptname ccMTY_DES_CheckFoundRelics extends ReferenceAlias  

event onRead()

Utility.Wait(5.0)

	if Game.GetPlayer().GetItemCount(Mace) > 0
		myQST.SetStage(10)
	endif

	if Game.GetPlayer().GetItemCount(Sword) > 0
		myQST.SetStage(20)
	endif

	if Game.GetPlayer().GetItemCount(Boots) > 0
		myQST.SetStage(30)
	endif

	if Game.GetPlayer().GetItemCount(Chestplate) > 0
		myQST.SetStage(40)
	endIf

	if Game.GetPlayer().GetItemCount(Gloves) > 0
		myQST.SetStage(50)
	endif

	if Game.GetPlayer().GetItemCount(Helm) > 0
		myQST.SetStage(60)
	endif

	if Game.GetPlayer().GetItemCount(Shield) > 0
		myQST.SetStage(70)
	endif

endevent

Quest Property myQST  Auto  

Weapon Property Mace Auto

Weapon Property Sword Auto

Armor Property Boots Auto

Armor Property Chestplate Auto

Armor Property Gloves Auto

Armor Property Helm Auto

Armor Property Shield Auto