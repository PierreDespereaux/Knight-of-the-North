Scriptname ccMTY_DES_WinQuest extends ReferenceAlias  

Event OnContainerChanged(ObjectReference akNewContainer, ObjectReference akOldContainer)
	NumberofRelics.Mod(1.0)
		if NumberofRelics.GetValue() == 7
			MyQST.SetStage(75)
		endif
EndEvent

GlobalVariable Property NumberofRelics  Auto  

Quest Property MyQST Auto