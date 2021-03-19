;/ Decompiled by Champollion V1.0.1
Source   : QF_MS06_00026C4D.psc
Modified : 2021-02-23 22:35:23
Compiled : 2021-02-23 22:35:24
User     : thest
Computer : TATEPC
/;
scriptName QF_MS06_00026C4D extends Quest hidden

;-- Properties --------------------------------------
referencealias property Alias_MS06FinalePotemaMarkerAlias auto
referencealias property Alias_MS06PotemasSkull auto
referencealias property Alias_MS06FalkNote auto
Quest property Quest_MS06Start auto
achievementsscript property AchievementsQuest auto
referencealias property Alias_MS06QuestStartTriggerAlias auto
objectreference property ccMTY_DES_Sword auto
Quest property MS06Start auto
leveleditem property MS06Shield auto
referencealias property Alias_PotemasCatacombQT auto
referencealias property Alias_MS06SybelleStentor auto
referencealias property Alias_MS06Styrr auto
referencealias property Alias_Player auto
referencealias property Alias_MS06Una auto
leveleditem property LvlQuestReward04Wow auto
objectreference property BluePalaceMarker auto
Quest property CourierQuest auto
referencealias property Alias_MS06CatacombsKeyAlias auto
referencealias property Alias_MS06FalkFirebeard auto

;-- Variables ---------------------------------------

;-- Functions ---------------------------------------

function Fragment_0()

	self.setstage(5)
endFunction

function Fragment_15()

	Quest __temp = self as Quest
	ms06script kmyQuest = __temp as ms06script
	game.GetPlayer().additem(Alias_MS06CatacombsKeyAlias.GetRef() as form, 1, false)
	self.setObjectiveCompleted(50, true)
	self.setObjectiveDisplayed(100, true, false)
endFunction

function Fragment_33()

	self.setObjectiveCompleted(155, true)
endFunction

function Fragment_21()

	self.setObjectiveCompleted(125, true)
	self.setObjectiveDisplayed(150, true, false)
	self.setObjectiveDisplayed(155, true, false)
	ccMTY_DES_Sword.SetActorOwner(game.GetPlayer().GetActorBase())
endFunction

function Fragment_32()

	game.GetPlayer().additem(MS06Shield as form, 1, false)
	game.GetPlayer().additem(LvlQuestReward04Wow as form, 1, false)
	self.setObjectiveCompleted(150, true)
endFunction

function Fragment_34()

	self.setObjectiveCompleted(100, true)
	self.setObjectiveDisplayed(125, true, false)
endFunction

function Fragment_30()

	self.setObjectiveDisplayed(50, true, false)
endFunction

function Fragment_31()

	; Empty function
endFunction

function Fragment_35()

	if MS06Start.IsCompleted() == 1 as Bool
		Alias_MS06FalkNote.GetRef().Enable(false)
		(CourierQuest as wicourierscript).AddItemToContainer(Alias_MS06FalkNote.GetRef() as form, 1)
	endIf
endFunction

; Skipped compiler generated GetState

function Fragment_36()

	game.GetPlayer().additem(MS06Shield as form, 1, false)
	game.GetPlayer().additem(LvlQuestReward04Wow as form, 1, false)
	self.setObjectiveCompleted(150, true)
	self.setstage(250)
endFunction

; Skipped compiler generated GotoState

function Fragment_24()

	AchievementsQuest.IncSideQuests()
	self.setObjectiveCompleted(150, true)
	self.setObjectiveCompleted(155, true)
	ccMTY_DES_Sword.SetActorOwner(game.GetPlayer().GetActorBase())
	self.Stop()
endFunction
