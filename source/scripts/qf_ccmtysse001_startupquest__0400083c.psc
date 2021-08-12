;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 11
Scriptname QF_ccMTYSSE001_StartupQuest__0400083C Extends Quest Hidden

;BEGIN ALIAS PROPERTY KnightJournal
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_KnightJournal Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY CrusaderHelm
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_CrusaderHelm Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY KyneKnightNote
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_KyneKnightNote Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY CrusaderShield
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_CrusaderShield Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY CrusaderSword
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_CrusaderSword Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY CrusaderGloves
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_CrusaderGloves Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY RoriksteadThalmor
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_RoriksteadThalmor Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY IcebergeThalmor2
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_IcebergeThalmor2 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY CrusaderArmor
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_CrusaderArmor Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY CrusaderMace
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_CrusaderMace Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY StendarrThalmor
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_StendarrThalmor Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY DibellaKnightNote
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_DibellaKnightNote Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY NorthkeepThalmor
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_NorthkeepThalmor Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ArkayNote
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ArkayNote Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY LettertoJarl
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_LettertoJarl Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY IcebergThalmor1
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_IcebergThalmor1 Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY CrusaderBoots
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_CrusaderBoots Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY StendarrBeaonKnightNote
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_StendarrBeaonKnightNote Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_4
Function Fragment_4()
;BEGIN CODE
SetObjectiveCompleted(20)
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

;BEGIN FRAGMENT Fragment_5
Function Fragment_5()
;BEGIN CODE
SetObjectiveCompleted(30)
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
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN CODE
stop()
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

;BEGIN FRAGMENT Fragment_8
Function Fragment_8()
;BEGIN CODE
SetObjectiveCompleted(60)
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

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
SetObjectiveCompleted(10)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

Quest Property PointerQuest  Auto  
