Scriptname DES_LowerInfamy extends ReferenceAlias  

GlobalVariable property ccMTYSSE001_CrusaderGlobalInfamy auto
Formlist property ccMTY_DES_NineDivines auto
Spell Property FavorJobsBeggarsAbility auto
float property InfamyChangeShrines auto
float property InfamyChangeCharity auto
float property CoolDown auto
Message Property ccMTY_DES_InfamyMessage0 auto
Message Property ccMTY_DES_InfamyMessage1 auto
Message Property ccMTY_DES_InfamyMessage2 auto
Message Property ccMTY_DES_InfamyMessage3 auto
Message Property ccMTY_DES_InfamyMessage4 auto
Message Property ccMTY_DES_InfamyMessage5 auto
Message Property ccMTY_DES_InfamyMessage0Bad auto
Quest Property ccMTYSSE001_Quest auto

auto state Waiting
    Event OnMagicEffectApply(ObjectReference akCaster, MagicEffect akEffect)
	;debug.notification("A magic effect has been applied.")
        if ccMTY_DES_NineDivines.HasForm(akEffect)
	    ; debug.notification("A Divine has been prayed to.")
	     If !ccMTYSSE001_Quest.IsRunning()
            		ChangeInfamy(InfamyChangeShrines)
           		GoToState("Cooldown")
		ENDIF
       endIf
    endEvent

    Event OnHit(ObjectReference akAggressor, Form akSource, Projectile akProjectile, bool abPowerAttack, bool abSneakAttack, \
  bool abBashAttack, bool abHitBlocked)
		if (akSource == FavorJobsBeggarsAbility as Spell)
			;debug.notification("Charity has been given.")
	   		  If !ccMTYSSE001_Quest.IsRunning()
				ChangeInfamy(InfamyChangeCharity)
				GoToState("Cooldown")
			ENDIF
		endif
	endevent

function ChangeInfamy(float d)
	;debug.notification("Infamy is being changed.")
        float oldInfamy = ccMTYSSE001_CrusaderGlobalInfamy.GetValue()
        float newInfamy = ccMTYSSE001_CrusaderGlobalInfamy.Mod(d)
        if(newInfamy < 0.0)
            ccMTYSSE001_CrusaderGlobalInfamy.SetValue(0.0)
            newInfamy = 0.0
        endIf
	debug.notification("Infamy is now " + newInfamy)
        ;do threshold stuff here
        ;if old infamy < threshold && new infamy > threshold
	IF newInfamy >= 0 && newInfamy < 1 && !ccMTYSSE001_Quest.IsCompleted()
		ccMTY_DES_InfamyMessage0.Show()
	ELSEIF newInfamy >= 0 && newInfamy < 1 && ccMTYSSE001_Quest.IsCompleted()
		ccMTY_DES_InfamyMessage0Bad.Show()
	ELSEIF newInfamy <= 5 && newInfamy > 0 
		ccMTY_DES_InfamyMessage1.Show()
	ELSEIF newInfamy <=10 && newInfamy > 5
		ccMTY_DES_InfamyMessage2.Show()
	ELSEIF newInfamy <=14&& newInfamy > 10
		ccMTY_DES_InfamyMessage3.Show()
	ELSEIF newInfamy >= 15 && newInfamy < 16
		ccMTY_DES_InfamyMessage4.Show()
	ELSEIF newInfamy >= 16
		ccMTY_DES_InfamyMessage5.Show()
	ENDIF
endFunction

endState

state Cooldown
    Event OnBeginState()
        RegisterForSingleUpdateGameTime(CoolDown)
    endEvent
    
    Event OnUpdateGameTime()
        GoToState("Waiting")
    endEvent
endState

function ChangeInfamy(float d)
endFunction