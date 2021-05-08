#SingleInstance, Force
#InstallKeybdHook
SendMode Input

#IfWinActive Vermintide 2 ahk_exe vermintide2.exe
  ; Bardin
  ; Kerillian
  ; Kruber
  ; Saltzpyre
  ; Sienna
  ; params
  ; global Hero := "Kerillian"
  ; global Weapon := "2hSword"
  global Hero := "Bardin"
  global Weapon := "HammerShield"

  global Career := Hero . Weapon

  ; Defaults
  global Horde := "GenericSpam"
  global Elite := "GenericHeavy"
  global ArmoredElite := "GenericHeavy"
  global Monster := "GenericSpam"
  global ArmoredMonster := "GenericHeavy"
  global Special := "GenericSpecial"
  global LightDelay := 25
  global SpecialDelay := 50
  global HeavyDelay := 450
  global BlockDelay := 50

  #include %A_ScriptDir%\Lib\lib.ahk

  oSpVoice := ComObjCreate("SAPI.SpVoice")
  StartVoiceLine := "Using " . Hero . " " . Weapon
  oSpVoice.Speak(StartVoiceLine)

  ^r::Reload ; Ctrl+Alt+R

  ^XButton1::
  ^!XButton1::
  !XButton1::
  !+XButton1::
  +XButton1::
  +^XButton1::
  XButton1::
    While GetKeyState("XButton1","P")
    {
      shiftHeld := GetKeyState("LShift", "P")
      ctrlHeld := GetKeyState("LControl", "P")
      altHeld := GetKeyState("LAlt", "P")
      if (altHeld && ctrlHeld)
        %ArmoredMonster%()
      else if (shiftHeld && altHeld)
        %Monster%()
      else if (shiftHeld)
        %ArmoredElite%()
      else if (altHeld)
        %Elite%()
      else if (ctrlHeld)
        %Special%()
      else
        %Horde%()
    }
  Return
