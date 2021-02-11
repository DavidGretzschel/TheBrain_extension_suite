class TB {

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
      TB.switch_to_previous_window_and_move_current_to_bottom()
      Sleep,200
      TBK.Backward()
      WM.switch_to_bottom_window()
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
}