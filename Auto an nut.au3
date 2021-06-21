#NoTrayIcon
#include <GUIConstantsEx.au3>
GUICreate("- Auto an nut -",260, 290, 192, 124)
Global $OK_Btn = GUICtrlCreateButton("Start", 18, 220, 85, 25)
Global $Stop_Btn = GUICtrlCreateButton("Stop", 110, 220, 85, 25)
    $label = GUICtrlCreateLabel("*NOTE: Dùng TAB", 18, 255, 170, 17)
    $Random = Random ('0x000000','0xFFFFFF')
    GUISetBkColor ($Random)

    $label1 = GUICtrlCreateLabel("Nut", 18, 25, 170, 17)
    $label2 = GUICtrlCreateLabel("Nut", 18, 50, 170, 17)
    $label3 = GUICtrlCreateLabel("Nut", 18, 75, 170, 17)
    $label4 = GUICtrlCreateLabel("Nut", 18, 100, 170, 17)
    $label5 = GUICtrlCreateLabel("Nut", 18, 125, 170, 17)
    $label6 = GUICtrlCreateLabel("Nut", 18, 150, 170, 17)
    $label7 = GUICtrlCreateLabel("So lan lap lai", 18, 185, 170, 17)

    $label11 = GUICtrlCreateLabel("sau", 110, 25, 170, 17)
    $label21 = GUICtrlCreateLabel("sau", 110, 50, 170, 17)
    $label31 = GUICtrlCreateLabel("sau", 110, 75, 170, 17)
    $label41 = GUICtrlCreateLabel("sau", 110, 100, 170, 17)
    $label51 = GUICtrlCreateLabel("sau", 110, 125, 170, 17)
    $label61 = GUICtrlCreateLabel("sau", 110, 150, 170, 17)
    $label61 = GUICtrlCreateLabel("sau", 110, 150, 170, 17)

	$label111 = GUICtrlCreateLabel("Giay", 220, 25, 170, 17)
    $label211 = GUICtrlCreateLabel("Giay", 220, 50, 170, 17)
    $label311 = GUICtrlCreateLabel("Giay", 220, 75, 170, 17)
    $label411 = GUICtrlCreateLabel("Giay", 220, 100, 170, 17)
    $label511 = GUICtrlCreateLabel("Giay", 220, 125, 170, 17)
    $label611 = GUICtrlCreateLabel("Giay", 220, 150, 170, 17)
    $label611 = GUICtrlCreateLabel("Giay", 220, 150, 170, 17)

    $nut1 = GUICtrlCreateInput("", 40, 20, 57, 21)
    $nut2 = GUICtrlCreateInput("", 40, 45, 57, 21)
    $nut3 = GUICtrlCreateInput("", 40, 70, 57, 21)
    $nut4 = GUICtrlCreateInput("", 40, 95, 57, 21)
    $nut5 = GUICtrlCreateInput("", 40, 120, 57, 21)
    $nut6 = GUICtrlCreateInput("", 40, 145, 57, 21)

    $in1 = GUICtrlCreateInput("0", 150, 20, 57, 21)
    $in2 = GUICtrlCreateInput("0", 150, 45, 57, 21)
    $in3 = GUICtrlCreateInput("0", 150, 70, 57, 21)
    $in4 = GUICtrlCreateInput("0", 150, 95, 57, 21)
    $in5 = GUICtrlCreateInput("0", 150, 120, 57, 21)
    $in6 = GUICtrlCreateInput("0", 150, 145, 57, 21)
    $in7 = GUICtrlCreateInput("3", 110, 180, 57, 21)

GUISetState()
While 1
   $n = GUICtrlRead ($in7) *1
   $msg = GUIGetMsg()
    Select
        Case $msg = $GUI_EVENT_CLOSE
            ExitLoop
			Exit
        Case $msg = $OK_Btn
            if GUICtrlRead($OK_Btn) = "Start" Then
			   $i=0
			   While $i<$n
				  $time = GUICtrlRead ($in1)*1
				  ConsoleWrite($time)
				  $begin = TimerInit()
				  While Int(TimerDiff($begin)/1000) <= $time
					 $Diffsek = Int(Mod($time - TimerDiff($begin)/1000, 60))
					 if GUIGetMsg() = $Stop_Btn then
                        ContinueCase
					 EndIf
					 Sleep(10)
				  WEnd
				  ConsoleWrite(GUICtrlRead ($nut1))

				  $i=$i+1
				  ConsoleWrite($i)
				  if $i = $n then
					 ContinueCase
				  EndIf
				  if GUIGetMsg() = $Stop_Btn then
                        ContinueCase
				  EndIf
                WEnd
			EndIf
		 Case @error
    EndSelect
WEnd
Exit