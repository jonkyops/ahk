#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

If (Career = "SaltzpyreRapier") {
    Elite := "SaltzpyreRapierElite"
    ArmoredElite := "SaltzpyreRapierArmoredEliteMonster"
    Monster := "SaltzpyreRapierArmoredEliteMonster"
    ArmoredMonster := "SaltzpyreRapierArmoredEliteMonster"
}

SaltzpyreRapierElite() {
    HeavyAttack(550)
    Sleep 200
    SpecialAttack(SpecialDelay)
    Sleep 600
    Return
}

SaltzpyreRapierArmoredEliteMonster() {
    HeavyAttack(700)
    Return
}




; Elite := "SaltzpyreRapierElite"
; ArmoredElite := "SaltzpyreRapierArmoredEliteMonster"
; Monster := "SaltzpyreRapierArmoredEliteMonster"
; ArmoredMonster := "SaltzpyreRapierArmoredEliteMonster"
; VoiceLine := "Salt Ass Rapier"