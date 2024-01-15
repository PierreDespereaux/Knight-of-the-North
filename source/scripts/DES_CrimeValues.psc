Scriptname DES_CrimeValues extends Quest  

int property myNewCrime auto conditional

int property myOldCrime auto conditional

Event OnInit()

myOldCrime = ccmtysse001_crimesharedfunctions.GetPlayerCrimeTotal()
myNewCrime = ccmtysse001_crimesharedfunctions.GetPlayerCrimeTotal()

EndEvent