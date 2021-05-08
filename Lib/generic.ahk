#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%
GenericSpam() {
    global LightDelay

    LightAttack(LightDelay)
    Sleep 50

}

GenericSpecial() {
    global SpecialDelay
    SpecialAttack(SpecialDelay)
    Sleep 100
    Return
}

GenericHeavy() {
    global HeavyDelay
    HeavyAttack(HeavyDelay)
    Sleep 100
    Return
}