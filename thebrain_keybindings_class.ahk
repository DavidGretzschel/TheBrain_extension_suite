   ; the brain keybindings-class
; so that from the code you can quickly see, whether something is script or basic
class TBK{
   
; splitter & focus control (default)
   keyboard_Focus_to_Notes(){
		Send,^n
	   }

	keyboard_Focus_to_Search(){
		Send,^s
	   }

	Splitter_left_or_up(){
		Send,^+a
	   }

	Splitter_right_or_down(){
		Send,^+s
	   }

	rotate_Splitter(){
		Send,^+d
	   }

; Thought creation (default)
	create_Child(){
		Send,F6
	   }

	create_Parent(x){
		Send,F7
	   }

	create_Jump(x){
		Send,F8
	   }

; Control number-row: pins and Collapse/Expand (default)
	Navigation_to_Pin_1(){
		Send,^1
	   }
	Navigation_to_Pin_2(){
		Send,^2
	   }
	Navigation_to_Pin_3(){
		Send,^3
	   }
	Navigation_to_Pin_4(){
		Send,^4
	   }
	Navigation_to_Pin_5(){
		   Send,^5
	   }
	Navigation_to_Pin_6(){
		Send,^6
	   }
	Navigation_to_Pin_7(){
		Send,^7
	   }
	Navigation_to_Pin_8(){
		Send,^8
	   }

   Collapse_All(){
		Send,^9
	   }
	Expand_All(){
		Send,^0
	   }
; Control Shift number-row for display options (default)	
	Normal(){
		Send,^+1
	   }
	Outline(){
		Send,^+2
	   }

   Mind_Map(){
		Send,^+3
	   }

; Control Shift number row (extended)
	
	toggle_siblings(){
		Send,^+4
	   }
	toggle_fogotten(){
		Send,^+5
	   }
	toggle_private(){
		Send,^+6
	   }

   toggle_Title(){
		Send,^+7
	   }

	toggle_backlinks(){
		Send,^+8
	   }

   toggle_unlinked_mentions(){
		Send,^+9
	   }

; odds and ends

	Preferences(){
		Send,^,
	   }

   Activate_Tag(){
		Send,^g
	   }
	Activate_Type(){
		Send,^e
	   }

   Web_Search(){
		Send,{F4}}
	   }

   Forget(){
		Send,^{Del}
	   }


	stock_Icon(){
		Send,^!i
	   }

	new_Window(){
		Send,^+n
	   }
	show_thought_properties(){
		Send,!{Enter}
	   }
	Copy_as_Text(){
		Send,^+c
	   }
	Export_PDF(){
		Send,^!p
	   }
	open_in_Browser(){
		Send,^!o
	   }


; essential Notes-commands

	insert_time(){
		Send,^d
	   }

	open_Attachment(){
		Send,^o
	   }

	open_folder(){
		Send,^!f
	   }

	insert_edit_Thought_or_Web_Link(){
		Send,^k
	   }

	take_action(){
		Send,^l
	   }

;folding (or collapsing/expanding)
	Notes_collapse_all(){
		Send,^[
	   }
	Notes_expand_all(){
		Send,^]
	   }

	Notes_collapse_all_except_here(){
		Send,^+[
	   }

	Notes_expand_collapse_toggle(){
		Send,^\
	   }

; common-sense editing/navigation/display defaults
   ; unforced
	Find_and_Replace(){
		Send,^f
		   }

   Find_next(){
     Send,{F3}
      }

   Find_previous(){
     Send,+{F3}
      }
	
   Replace_Next(){
		Send,^{F3}
		   }
	Replace_Previous(){
		Send,^+{F3}
		}
      
	Paste_Alternate(){
		   Send,^+v
		   }
	Forward(){
		Send,!{Right}
		   }
	Backward(){
		   Send,!{Left}
		   }
	Print(){
		Send,^p
		   }
   ;font manip
	Bold(){
		Send,^p
		   }
	Italic(){
		Send,^i
		   }
	Underline(){
		Send,^u
		   }
		

	select_all(){
		Send,^a
	   }


	Zoom_out(){
		Send,^-
	   }
	Zoom_in(){
		Send,^{+}
	   }
	New_Tab(){
		Send,^t
	   }
	Close_Tab(){
		Send,^w
	   }
	Next_Brain(){
		Send,^{Tab}
	   }
	Previous_Brain(){
		Send,^+{Tab}
	   }

   ; forced

	copy(){
		Send,^c
	   }

	cut(){
		Send,^x
	   }

	paste(){
		Send,^v
	   }

   ; forced & hidden
   top_of_document(){
      Send,^{Home}
      }
   end_of_document(){
      Send,^{End}
      }
   select_to_top_of_document(){
      Send,^+{Home}
      }
   select_to_end_of_document(){
      Send,^+{End}
      }


; others
	switch_name_and_label(){
		Send,^!1
	   }



; alt number row
	Toggle_Pin(){
		Send,!`
		}
	Paste_as_New(){
		Send,!1
		}
	Paste_on_Item(){
		Send,!2
		}
	convert_Thought_between(){
		Send,!3
		}
   
   Unlink(){
		Send,!4
		}
	
	Link_to_File(){
		Send,!5
		}
	
	add_Markdown_file(){
		Send,!6
	   }
	
	Link_to_Folder(){
		Send,!8
		}
	

; Attachments

	next_Attachment(){
		Send,^q
	   }
	previous_Attachment(){
		Send,^+q
	   }

	copy_Attachment(){
		Send,!c
	   }

	delete_Attachment(){
		Send,!{Delete}
	   }

; links
	Select_Link(){
		Send,^.
		}

	Toggle_Selection(){
		Send,!q
		}
	Clear_Selection(){
		Send,!w
		}

; Selection
	Selection_Unlink_Selection(){
		Send,!r
			}
	Selection_Link_as_Children(){
		Send,+{F6}
			}
	Selection_Link_as_Parents(){
		Send,+{F7}
			}
	Selection_Link_as_Jumps(){
		Send,+{F8}
			}
	Selection_delete(){
		Send,^+{Delete}
		}

	Selection_select_related_thoughts(){
		Send,!e
	   }

; arrange thoughts by.....

	Arrange_Thoughts_by_NameActivated(){
		Send,!+1
	   }
	Arrange_Thoughts_by_TypeActivated(){
		Send,!+2
	   }
	Arrange_by_Date_Created(){
		Send,!+3
	   }
	reverse_Arrange_by_Date_Created(){
		Send,!+4
	   }
	Arrange_by_Date_Modified(){
		Send,!+5
	   }
	reverse_Arrange_by_Date_Modified(){
		Send,!+6
	   }
	Arrange_by_Date_Activated(){
		Send,!+7
	   }
	reverse_Arrange_by_Date_Activated(){
		Send,!+8
	   }

; extra settings
	BrainTheme(){
		Send,^!.
		}
	Notes_Style(){
		Send,^!/
		}



; Markdown/Note stuff
	strikethru(){
		Send,^m
	   }
	checkbox_list(){
		Send,!i
		}
	unordered_list(){
		Send,!o
		}
	ordered_list(){
		Send,!p
		}

;Notes>checkbox List &Ctrl

;headers
; footer
	footer_no_mapped_link(){
		Send,^!{F5}
		}
	footer_Link_as_Child(){
		Send,^!{F6}
		}
	footer_Link_as_Parent(){
		Send,^!{F7}
		}
	footer_Link_as_Jump(){
		Send,^!{F8}
		}
; more window navigation
   presentation_mode(){
      Send,^+p
      }
   Content_In_New_Window(){
		Send,^+m
	   }

	open_Thought_in_new_window(){
		Send,^!+m
	   }

	duplicate_Tab(){
		Send,^!+]
	   }
; depracted for keyspace or was it alt shift o?
	move_tab_to_new_window(){
		Send,^!+[
	   }

   copy_local_Thought_url(){
     Send,^!k
      }

}