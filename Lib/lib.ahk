#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

#Include %A_ScriptDir%\Lib\actions.ahk
#Include %A_ScriptDir%\Lib\generic.ahk
#Include %A_ScriptDir%\Lib\Saltzpyre\rapier.ahk
#Include %A_ScriptDir%\Lib\Kruber\spearshield.ahk
#Include %A_ScriptDir%\Lib\Bardin\hammershield.ahk
#Include %A_ScriptDir%\Lib\Kerillian\2hsword.ahk
#Include %A_ScriptDir%\Lib\Kerillian\dualsword.ahk

varExist(ByRef v) { ; Requires 1.0.46+
   return &v = &n ? 0 : v = "" ? 2 : 1 
}