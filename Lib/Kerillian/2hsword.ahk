#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

If (Career = "Kerillian2hSword") {
    Elite := "Kerillian2hSwordArmoredEliteMonster"
    ArmoredElite := "Kerillian2hSwordArmoredEliteMonster"
    Monster := "Kerillian2hSwordArmoredEliteMonster"
    ArmoredMonster := "Kerillian2hSwordArmoredEliteMonster"
    HeavyDelay := 350
}

Kerillian2hSwordArmoredEliteMonster() {
    HeavyAttack(HeavyDelay)
    Sleep 900
    BlockCancel()
    Sleep 200
    ; Sleep 300
    ; BlockCancel()
    Return
}
