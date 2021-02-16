Scriptname ActuallyDisableHavok extends ObjectReference  


EVENT onLoad()
    BlockActivation(false)
    setMotionType(Motion_Keyframed, FALSE)
    self.MoveToMyEditorLocation()
endEVENT

EVENT onCellAttach()
    BlockActivation(false)
    self.MoveToMyEditorLocation()
endEVENT

EVENT onLoadGame()
    BlockActivation(false)
    if (Self.Is3DLoaded())
        setMotionType(Motion_Keyframed, FALSE)
    Endif
    self.MoveToMyEditorLocation()
endEVENT