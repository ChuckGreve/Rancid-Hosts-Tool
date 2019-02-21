#include <ButtonConstants.au3>
#include <ComboConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <XSkin.au3>
#Region ### START Koda GUI section ### Form=
$Skin_Folder = @ScriptDir & "\Skins\PDA-Game"
$directory = @ScriptDir

$XSkinGui = XSkinGUICreate("Gui", 350, 400,$Skin_Folder)
$AddButton = GUICtrlCreateButton("Add", 75, 312, 75, 25)
GUICtrlSetBkColor(-1, 0x75c9fd)
$CloseButton = GUICtrlCreateButton("Close", 200, 312, 75, 25)
GUICtrlSetBkColor(-1, 0x75c9fd)
$Combo1 = GUICtrlCreateCombo("", 176, 256, 121, 25, BitOR($GUI_SS_DEFAULT_COMBO,$CBS_SIMPLE))
GUICtrlSetData(-1, "cisco|dragonwave|mikrotik")
$Input1 = GUICtrlCreateInput("", 176, 152, 121, 21)
$Input2 = GUICtrlCreateInput("", 176, 204, 121, 21)
$Pic4 = GUICtrlCreatePic( @ScriptDir & "\Buttons\rancidpro.jpg", 48, 72, 252, 54)
$Pic2 = GUICtrlCreatePic( @ScriptDir & "\Buttons\hostname.jpg", 48, 200, 121, 29)
$Pic3 = GUICtrlCreatePic( @ScriptDir & "\Buttons\device.jpg", 48, 252, 121, 29)
$Pic1 = GUICtrlCreatePic( @ScriptDir & "\Buttons\ipaddress.jpg", 48, 148, 121, 29)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

While 1
	$nMsg = GUIGetMsg()
	  Switch $nMsg
	  Case $GUI_EVENT_CLOSE
		 GUIDelete($XSkinGui)
		 ExitLoop
		 Return 0

	  Case $AddButton
		 $ipaddress = GuiCtrlRead ($Input1)
		 $hostname = GuiCtrlRead ( $Input2)
		 $device = GuiCtrlRead ( $Combo1 )
		 ShellExecute(@ScriptDir & "\rp.bat", $ipaddress & " " & $hostname & " " & $device);, "", "" );, @SW_HIDE


	  Case $CloseButton
	  Exit


	EndSwitch
 WEnd