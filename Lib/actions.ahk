#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

LightAttack(Delay:=50) {
    SetMouseDelay, Delay
    Click
    Return
}

AttackUp() {
    Click, Up
    Return
}

AttackDown() {
    Click, Down
    Return
}

SpecialAttack(Delay:=50) {
    Send {h down}{h up}
    Return
}

BlockCancel() {
    Click, Right Down
    Sleep 50
    Click, Right up
    Return
}

BlockDown() {
    Click, Right Down
    Return
}

BlockUp() {
    Click, Right Up
    Return
}

HeavyAttack(Delay:=450) {
    Click, Down
    Sleep Delay
    Click, Up
    Return
}

ChainBashAttack(Delay) {
    BlockDown()
    AttackDown()
    Sleep Delay
    BlockUp()
    AttackUp()
    Sleep Delay
}

ChainLightHeavy(LightDelay, HeavyDelay) {
    LightAttack()

    BlockDown()
    Sleep Delay
    BlockUp()
    AttackUp()
    Sleep Delay
}