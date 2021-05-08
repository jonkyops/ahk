#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

If (Career = "KruberSpearShield") {
    Horde := "KruberSpearShieldHorde"
    Elite := "KruberSpearShieldEliteMonster"
    ArmoredElite := "KruberSpearShieldEliteMonster"
    Monster := "KruberSpearShieldEliteMonster"
    ArmoredMonster := "KruberSpearShieldEliteMonster"
    Special := "KruberSpearShieldSpecial"
}

; Kruber
KruberSpearShieldHorde() {
    LightAttack(LightDelay)
    LightAttack(LightDelay)
    BlockCancel()
    Return
}

KruberSpearShieldSpecial() {
    BlockUp()
    While GetKeyState("XButton1","P")
    {
        SpecialAttack(SpecialDelay)
    }
    BlockDown()
    Return
}

KruberSpearShieldEliteMonster() {
    BlockUp()
    LightAttack(LightDelay)
    BlockDown()
    HeavyAttack(HeavyDelay)
    HeavyAttack(HeavyDelay)
    Return
}