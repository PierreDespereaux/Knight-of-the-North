;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 17
Scriptname QF_ccMTYSSE001_StartupQuest__0400083C Extends Quest Hidden

;BEGIN ALIAS PROPERTY CrusaderMace
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_CrusaderMace Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY CrusaderShield
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_CrusaderShield Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY CrusaderHelm
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_CrusaderHelm Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY CrusaderSword
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_CrusaderSword Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY CrusaderArmor
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_CrusaderArmor Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Player
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Player Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY IcebergThalmor1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_IcebergThalmor1 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY CrusaderBoots
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_CrusaderBoots Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY IcebergeThalmor2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_IcebergeThalmor2 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY NorthkeepThalmor
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_NorthkeepThalmor Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY CrusaderGloves
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_CrusaderGloves Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY StendarrThalmor
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_StendarrThalmor Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY RoriksteadThalmor
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_RoriksteadThalmor Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
SetObjectiveCompleted(30)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
SetObjectiveCompleted(10)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_1
Function Fragment_1()
;BEGIN CODE
PointerQuest.SetStage(255)
SetObjectiveDisplayed(10)
SetObjectiveDisplayed(20)
SetObjectiveDisplayed(30)
SetObjectiveDisplayed(40)
SetObjectiveDisplayed(50)
SetObjectiveDisplayed(60)
SetObjectiveDisplayed(70)

IF ccMTY_DES_SwordObtained.GetValue() > 0
   SetStage(10)
ENDIF
IF ccMTY_DES_MaceObtained.GetValue() > 0
   SetStage(20)
ENDIF
IF ccMTY_DES_BootsObtained.GetValue() > 0
   SetStage(30)
ENDIF
IF ccMTY_DES_ArmorObtained.GetValue() > 0
   SetStage(40)
ENDIF
IF ccMTY_DES_GlovesObtained.GetValue() > 0
   SetStage(50)
ENDIF
IF ccMTY_DES_HelmObtained.GetValue() > 0
   SetStage(60)
ENDIF
IF ccMTY_DES_ShieldObtained.GetValue() > 0
   SetStage(70)
ENDIF
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_9
Function Fragment_9()
;BEGIN CODE
SetObjectiveCompleted(70)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_13
Function Fragment_13()
;BEGIN CODE
Actor Player = Alias_Player.getActorReference()
ObjectReference CrusaderHelm = Alias_CrusaderHelm.getReference()
CrusaderHelm.SetActorOwner(Player.GetActorBase())
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN CODE
DES_ThalmorNameReplacement.Stop()
DES_InfamyTrackerQuest.Start()
Utility.Wait(3)
ccMTY_DES_BeGood.Show()
stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
SetObjectiveCompleted(20)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
SetObjectiveCompleted(60)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_7
Function Fragment_7()
;BEGIN CODE
SetObjectiveCompleted(50)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_11
Function Fragment_11()
;BEGIN CODE
Actor Player = Alias_Player.getActorReference()
ObjectReference CrusaderSword = Alias_CrusaderSword.getReference()
Player.Additem(ccMTY_DES_HalloftheDeadKey)
CrusaderSword.SetActorOwner(Player.GetActorBase())
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN CODE
SetObjectiveCompleted(40)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Quest Property PointerQuest  Auto  

Quest Property DES_InfamyTrackerQuest  Auto  

GlobalVariable Property ccMTY_DES_HelmObtained Auto  
GlobalVariable Property ccMTY_DES_ArmorObtained Auto  
GlobalVariable Property ccMTY_DES_GlovesObtained Auto  
GlobalVariable Property ccMTY_DES_BootsObtained Auto  
GlobalVariable Property ccMTY_DES_ShieldObtained Auto  
GlobalVariable Property ccMTY_DES_SwordObtained Auto  
GlobalVariable Property ccMTY_DES_MaceObtained Auto  

Key Property ccMTY_DES_HalloftheDeadKey Auto  

Quest Property DES_ThalmorNameReplacement  Auto  

Message Property ccMTY_DES_BeGood  Auto  
