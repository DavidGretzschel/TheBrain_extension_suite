; functions that deal with windows, alt tabbing and such
class WM{
   switch_to_bottom_window(){
      Send,+!{Tab}
   }

   switch_to_previous_window_and_move_current_to_bottom(){
      Send,!{Esc}
   }
   normalize_window(){
      WinMove, A,, 200, 200, 1000,1000 
   }
}