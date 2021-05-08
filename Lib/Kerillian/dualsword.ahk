#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

If (Career = "KerilliandualSword") {
    Elite := "KerilliandualSwordArmoredEliteMonster"
    ArmoredElite := "KerilliandualSwordArmoredEliteMonster"
    Monster := "KerilliandualSwordArmoredEliteMonster"
    ArmoredMonster := "KerilliandualSwordArmoredEliteMonster"
    HeavyDelay := 350
}

KerilliandualSwordArmoredEliteMonster() {
    HeavyAttack(HeavyDelay)
    Sleep 500
    BlockCancel()
    Sleep 200
    ; Sleep 300
    ; BlockCancel()
    Return
}
