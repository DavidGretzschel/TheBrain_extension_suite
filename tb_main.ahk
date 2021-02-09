#SingleInstance, Force
#Include, tb_class.ahk
#Include, tb_variables.ahk
; hotkeys
#If WinActive("TheBrain")
   +!a::TB.font_color_selection(red)
   +!s::TB.font_color_selection(yellow)
   +!d::TB.font_color_selection(green)
   +!f::TB.font_color_selection(orange)
   +!g::TB.font_color_selection(teal)
#If