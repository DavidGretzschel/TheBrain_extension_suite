SetWorkingDir %A_ScriptDir%
#SingleInstance, Force
#Include, %A_ScriptDir%/tb_class.ahk
#Include, %A_ScriptDir%/tb_variables.ahk
#Include, %A_ScriptDir%/thebrain_keybindings_class.ahk
#Include, %A_ScriptDir%/window_management.ahk


; hotkeys

#If WinActive("TheBrain")
; Markdown commands
   +!a::TB.multi_markdown(,,red)
   +!s::TB.multi_markdown(,,yellow)
   +!d::TB.multi_markdown(,,green)
   +!f::TB.multi_markdown(,,orange)
   +!g::TB.multi_markdown(,,teal)
   +!h::TB.multi_markdown("Lobster",120,red,green)
   ^+,::TB.open_Thought_maximized_Plex()
; fancy new opener-commands
   !+m::TB.open_new_window_from_search("Content_in_New_Window")
   !+,::TB.open_new_window_from_search("open_Thought_maximized_Plex")
   !+o::TB.open_new_window_from_search("open_Attachment")
   !l::TB.textlink_follow("Content_in_New_Window")
#If
