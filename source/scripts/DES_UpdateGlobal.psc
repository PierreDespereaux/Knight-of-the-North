Scriptname DES_UpdateGlobal extends Quest  

GlobalVariable Property ccMTYSSE001_CrusaderGlobalInfamy auto
Spell Property ccMTY_DES_InfamyDisplaySpell auto

Event OnMenuOpen(String MenuName)
	If MenuName == "MagicMenu"
		Float Infamy = ccMTYSSE001_CrusaderGlobalInfamy.GetValue()
		UpdateCurrentInstanceGlobal(ccMTYSSE001_CrusaderGlobalInfamy)
		ccMTY_DES_InfamyDisplaySpell.SetNthEffectMagnitude(0, Infamy)
	EndIf
EndEvent