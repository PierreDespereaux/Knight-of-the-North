Scriptname ccMTY_DES_WinQuest extends ReferenceAlias  

Event OnContainerChanged(ObjectReference akNewContainer, ObjectReference akOldContainer)
	NumberofRelics.Mod(1.0)
		if NumberofRelics.GetValue() == 7
			MyQST.SetStage(10)
			MyQST.SetStage(20)
			MyQST.SetStage(30)
			MyQST.SetStage(40)
			MyQST.SetStage(50)
			MyQST.SetStage(60)
			MyQST.SetStage(70)
			MyQST.SetStage(75)
		endif
EndEvent

GlobalVariable Property NumberofRelics  Auto  

Quest Property MyQST Auto