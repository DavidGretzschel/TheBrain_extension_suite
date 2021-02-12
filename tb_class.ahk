class TB {


; legacy helper functions (reimplementing)

   mouse_park(){
      MouseMove, 3800, 800
   }


   copy_parent_content(){
      Sleep,200
      Send,{Up}{Enter}
      Sleep,400
      TBK.keyboard_Focus_to_Notes()
      Send,^a^c
      TBK.keyboard_Focus_to_Search()
      Send,!{Left}
      TBK.keyboard_Focus_to_Notes()
      Sleep,400
      Send,^v
   }

   Title_copy(){
      TBK.show_thought_properties()
      Send,^c{Escape}
   }

   Thought_Type_activation(){
      TBK.show_thought_properties()
      Send,{Tab}{Tab}{Enter}
   }

   Thought_Tag_activation(){
      TBK.show_thought_properties()
      Send,{Tab}{Tab}{Tab}{Enter}
   }

   scroll_up_Plex(){
      MouseClickDrag, Left, 100, 546, 100, 200
      TB.mouse_park()
   }


   ; duplicate
   /* 
   open_Thought_maximized_Plex(){
      TBK.open_Thought_in_new_window()
      Sleep, 200
      TBK.Splitter_right_or_down()
   }
   */

   ; needs reference for creation_dialog
   /* 

   Thought_snapback(Thought_type){
      creation_dialog(Thought_type)
      ; wait for enter and Sleep, IMPLEMENT ME
      ; now jump back
      KeyWait,Enter,D
      Sleep,200
      Send, !{Left}
   }

   */

   code_paste(){
      SetKeyDelay,1
      Send,`````` ; six backticks to escape each other
      Send,{Enter}^+v{Enter}
      Send,`````` ; six backticks to escape each other
      Send,{Enter}
   }

   creation_dialog(x){
      if(x=="child") {
         Send, {F6}
      }
      if(x=="parent") {
         Send, {F7}
      }
      if(x=="jump") {
         Send, {F8}
      }
   }



; experimental line manip section


   line_down(){
      SetKeyDelay, 20
      TB.line_cut_delete()
      TB.EOL()
      Send,{Enter}
      Send,^v
   }

   line_up(){
      SetKeyDelay, 20
      TB.line_cut_backspace()
      TB.BOL()
      Send,{Enter}{Up}
      Send,^v
   }


   line_cut_delete(){
      TB.line_select()
      TB.cut_delete()
   }

   line_cut_backspace(){
      TB.line_select()
      TB.cut_backspace()
   }


   ; -----------------------------
   ; text-editing basics
   ; -----------------------------
   ; -----------------------------



   line_select(){
      TB.BOL()
      TB.select_to_EOL()
   }

   select_to_EOL(){
      Send,+{End}
   }

   select_to_BOL(){
      Send,+{Home}+{Home}
   }

   BOL(){
      Send,{Home}{Home}
   }

   EOL(){
      Send,{End}
   }


   cut_delete(){
      TB.cut()
      Send,{Delete}
   }

   cut_backspace(){
      TB.cut()
      Send,{BackSpace}
   }



; markdown section

   multi_markdown(family := false, size := false, color := false, bg_color := false){
      TBK.cut()
      TB.markdown_opening()
      TBK.paste()
      TB.markdown_start_attribute_list()
      if(family){
         SendRaw,font-family:
         Send,%family%
         TB.markdown_extra_attribute()
      }
      if(size){
         SendRaw,font-size:
         Send,%size%`%
         TB.markdown_extra_attribute()
      }
      if(color){
         SendRaw,color:#
         Send,%color%
         TB.markdown_extra_attribute()
      }
      if(bg_color){
         SendRaw,background-color:#
         Send,%bg_color%
      }
      TB.markdown_close()
   }


   markdown_opening(){
      SendRaw,:{
      ;Send,:{{}
      }

   markdown_start_attribute_list(){
      Send,:(style="
      }

   markdown_color(font_color){
      ;Send,color:{#}
      SendRaw,color:#
      Send,%font_color%
      }
   markdown_extra_attribute(){
      SendRaw,`;
      }

   markdown_attribute_end(){
      SendRaw,"):
      }
   markdown_close(){
      TB.markdown_attribute_end()
      SendRaw,}:
      ;Send,"):{}}:
      }

; fancy window opener section
/*
trying to make this read by keystroke vis
*/
   civilized_duplication(){
      WinGetPos, X, Y, Width, Height, A
      TBK.duplicate_Tab()
      TBK.move_tab_to_new_window()
      Sleep,1500
      WinMove, A,, X+Width, Y, Width, Height
      }
   
   textlink_follow(function){
      WinGetPos, X, Y, Width, Height, A
      TBK.take_action()
      Sleep,1500
      TBK[function]()
      Sleep,1500
      TB.fix_caller_window_and_return()
      Sleep,1500
      WinMove, A,, X+Width, Y, Width, Height
      TBK.keyboard_Focus_to_Notes()
      }

   open_attachment_from_search(function){
      TB.select_seach_entry()
      TBK[function]()
      TB.fix_caller_window_and_return()
      }

   open_new_window_from_search(function){
      TB.select_seach_entry()
      TBK[function]()
      Sleep,1500
      TB.fix_caller_window_and_return()
      }

   fix_caller_window_and_return(){
      WinGetTitle, nice_title_output, ahk_pid
      WM.switch_to_previous_window_and_move_current_to_bottom()
      Sleep,200
      TBK.Backward()
      WinActivate, ahk_pid %nice_title_output%
      }
   
   select_seach_entry(){
         Send,{Enter}
      }
     
   open_Thought_maximized_Plex(){
         TBK.open_Thought_in_new_window()
         Sleep,200
         TBK.Splitter_right_or_down()
      }
   
   focussed_Thought_Content_max(){
         Send,{Enter}
         TBK.Splitter_left_or_up()
         TBK.Splitter_left_or_up()
      }

; experimental minimalist windows
   minimalist_window(){
      WinGetPos,X, Y, Width, Height, A
      TBK.presentation_mode()
      Sleep,1500
      WinMove,A,, X, Y, Width, Height
      }
}