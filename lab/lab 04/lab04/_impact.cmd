setPreference -pref UserLevel:NOVICE
setPreference -pref MessageLevel:DETAILED
setPreference -pref ConcurrentMode:FALSE
setPreference -pref UseHighz:FALSE
setPreference -pref ConfigOnFailure:STOP
setPreference -pref StartupCLock:AUTO_CORRECTION
setPreference -pref AutoSignature:FALSE
setPreference -pref KeepSVF:FALSE
setPreference -pref svfUseTime:FALSE
setPreference -pref UserLevel:NOVICE
setPreference -pref MessageLevel:DETAILED
setPreference -pref ConcurrentMode:FALSE
setPreference -pref UseHighz:FALSE
setPreference -pref ConfigOnFailure:STOP
setPreference -pref StartupCLock:AUTO_CORRECTION
setPreference -pref AutoSignature:FALSE
setPreference -pref KeepSVF:FALSE
setPreference -pref svfUseTime:FALSE
setMode -bs
setPreference -pref UserLevel:Novice
setMode -pff
setMode -mpm
setMode -cf
setMode -dtconfig
setMode -bsfile
setMode -sm
setMode -ss
setMode -bs
addDevice -position 1 -file "F:\2006-2007\eem211\lab04\lab04\fourbitadder1.bit"

addDevice -position 2 -part "xcf02s"
setCable -port lpt1
setMode -bs
setMode -bs
setMode -ss
setMode -sm
setMode -bsfile
setMode -dtconfig
setMode -cf
setMode -mpm
setMode -pff
setMode -bs
setAttribute -position 1 -attr configFileName -value "F:\2006-2007\eem211\lab04\lab04\fourbitadder2.bit"
Program -p 1 
setAttribute -position 1 -attr configFileName -value "F:\2006-2007\eem211\lab04\lab04\fourbitadder2.bit"
setAttribute -position 1 -attr configFileName -value "F:\2006-2007\eem211\lab04\lab04\fourbitadder2.bit"
Program -p 1 -v 
setMode -pff
setMode -sm
setMode -bs
setMode -bs
setMode -ss
setMode -sm
setMode -bsfile
setMode -dtconfig
setMode -cf
setMode -mpm
setMode -pff
setMode -bs
setMode -bs
