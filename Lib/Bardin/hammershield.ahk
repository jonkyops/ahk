#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

if (Career = "Bardin") {
    Horde := "BardinHammerShieldHorde"
    Elite := "BardinHammerShieldEliteMonster"
    ArmoredElite := "BardinHammerShieldEliteMonster"
    Monster := "BardinHammerShieldEliteMonster"
    ArmoredMonster := "BardinHammerShieldEliteMonster"
}

BardinHammerShieldEliteMonster() {
    ChainBashAttack(HeavyDelay)
}

BardinHammerShieldHorde() {
    LightAttack(LightDelay)
    Sleep 50
    While GetKeyState("XButton1","P")
    {
        LightAttack(LightDelay)
        Sleep 50 
        HeavyAttack(HeavyDelay)
        Sleep 100
    }
    Return
}