#SingleInstance, Force
#Include, C:\Users\david\Documents\GitHub\TheBrain_extension_suite\tb_class.ahk
#Include, C:\Users\david\Documents\GitHub\TheBrain_extension_suite\tb_variables.ahk


; hotkeys
#If WinActive("TheBrain")
   ;+!a::TB.multi_markdown("Lobster",120,red,green)
   +!a::TB.multi_markdown(,,red)
   +!s::TB.font_color_selection(yellow)
   +!d::TB.font_color_selection(green)
   +!f::TB.font_color_selection(orange)
   +!g::TB.font_color_selection(teal)
   ^+,::TB.open_Thought_maximized_Plex()
; fancy new opener-commands, still in v2 format
   
   !+m::TB.open_new_window_from_search("Content_in_New_Window")
   !+,::TB.open_new_window_from_search("open_Thought_maximized_Plex")
   !+o::TB.open_new_window_from_search("open_Attachment")
   !l::TB.textlink_follow("Content_in_New_Window")
#If



