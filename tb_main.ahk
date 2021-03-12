SetWorkingDir %A_ScriptDir%
Menu, Tray, Icon, %A_ScriptDir%\TB_externsion_suite_icon.png
#useHook On
#SingleInstance, Force
;includes
   #Include, %A_ScriptDir%/tb_class.ahk
   #Include, %A_ScriptDir%/tb_variables.ahk
   #Include, %A_ScriptDir%/thebrain_keybindings_class.ahk
   #Include, %A_ScriptDir%/window_management.ahk
   Notes_Attachment_open(){
      TB.line_select()
      TB.copy()
      Run % Clipboard
   }
   Notes_Attachment_grab(){
      Send, +{AppsKey}
      Sleep,1000
      Send,a
   }
   ; hotkeys
   F10::Notes_Attachment_grab()

   #If WinActive("ahk_exe ApplicationFrameHost.exe")
      ; F10 has side effect in OneNote wrt selection, try something else
      F12::OneNote.link_copy()
   #If

class OneNote {
   note_select(){
      Send,^!g
   }
   link_copy(){
      OneNote.note_select()
      Sleep, 500
      Send,{AppsKey}
      Sleep, 500
      Loop,7{
         Send,{Down}
         Sleep,50
      }
      Send,{Enter}{Enter}
      OneNote.link_modification()
   }

   link_modification(){
      filepath = C:\Users\david\Brains\U01\B03\de3e5e0c-bb70-45bf-bcb6-5e15d0e6d2cf\AHK_TEMP_FILES\onenote_links
      FileDelete, %filepath%
      FileAppend, %Clipboard%, %filepath%
      FileReadLine, Clipboard, %filepath%, 2
}
}

   #If WinActive("ahk_exe TheBrain.exe")
   
   !+q::Notes_Attachment_open()
   
   ; Markdown commands
      F11::
         Send,!{Tab}
         Send,!{Tab}
         Return,
      +!a::TB.multi_markdown(,,red)
      +!s::TB.multi_markdown(,,yellow)
      +!d::TB.multi_markdown(,,green)
      +!f::TB.multi_markdown(,,orange)
      +!g::TB.multi_markdown(,,teal)
      +!h::TB.multi_markdown("Lobster",120,orange)
      ^+,::TB.open_Thought_maximized_Plex()
   ; fancy new opener-commands
      ; odd function calls, because of class separation
      !+m::TB.open_new_window_from_search("Content_in_New_Window")
      !+,::TB.open_new_window_from_search("open_Thought_maximized_Plex")
      ;!+o::TB.open_new_window_from_search("open_Attachment")
      ; contains the "nice neighbour code"
      !l::TB.textlink_follow("Content_in_New_Window")
   ; experimental minimalist windows
   ; without alt+drag script inclusion, they are only stationary so far
      F10::TB.civilized_duplication()
      F9::TB.minimalist_window()
   #If