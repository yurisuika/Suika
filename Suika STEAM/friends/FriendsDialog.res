"Friends/FriendsDialog.res"
{
	controls
	{
		"FriendsDialog"
		{
			"ControlName"   "CFriendsDialog"
			"fieldName"   "FriendsDialog"
			"xpos"    "2123"
			"ypos"    "549"
			"wide"    "356"
			"tall"    "746"
			"AutoResize"    "1"
			"PinCorner"   "0"
			"enabled"   "1"

			"paintbackground"   "1"
			"settitlebarvisible"    "1"
			style="FriendsPanel"    
			closeonescape=1
		}

		"BuddyList"
		{
			"ControlName" "CFriendsListSubPanel"
			tabposition=1
		}

		"frame_title"
		{
			"ControlName"	"Label"
			"labelText"   "#SteamRootFriends"
			"xpos"    "0"
			"ypos"    "8"
			style="FriendsTitle"
			"textAlignment"   "west" 
			"textAlignment"   "center" [$OSX]
		}


		"DownLabel"
		{
			"ControlName"   "Label"
			"fieldName"   "DownLabel"
			"xpos"    "10"
			"ypos"    "85"
			"wide"    "336"
			"tall"    "80"
			"AutoResize"    "1"
			"PinCorner"   "0"
			"visible"   "0"
			"enabled"   "1"
			"paintbackground"   "1"
			"labelText"   "#Friends_NoFriendsInList"
			"textAlignment"   "north-west"
			"wrap"    "1"
		}

		"MenuBar"
		{
			style="RootMenu"
			"ControlName"   "MenuBar"
			"fieldName"   "MenuBar"
			"xpos"    "29"
			"ypos"    "2"
			"wide"    "75"
			"tall"    "27"
			"AutoResize"    "0"
			"PinCorner"   "0"
			"enabled"   "1"
			"paintbackground"   "1"
			zpos="-1" 
		}

		"FriendPanelSelf"
		{
			"ControlName"		"CFriendPanel"
			"fieldName"		"FriendPanelSelf"
			"tall"		"42"
			"AutoResize"		"0"
			"PinCorner"		"0"
			"paintbackground"		"1"
		}

		"AddFriendsButton"
		{
			style="AddFriendsButton"
			"ControlName"   "Button"
			"fieldName"   "AddFriendsButton"
			"xpos"    "10"
			"ypos"    "707"
			"wide"    "150"
			"tall"    "24"
			"AutoResize"    "0"
			"PinCorner"   "2"
			"visible"   "1"
			"enabled"   "1"
			"tabPosition"   "3"
			"paintbackground"   "1"
			"labelText"   "#Friends_AddFriend"
			"textAlignment"   "west"
			"wrap"    "0"
			"Default"   "0"
			"selected"    "0"
		}


		"NoFriendsAddFriendButton"
		{
			"ControlName"   "Button"
			"fieldName"   "NoFriendsAddFriendButton"
			"xpos"    "10"
			"ypos"    "129"
			"wide"    "200"
			"tall"    "24"
			"AutoResize"    "0"
			"PinCorner"   "0"
			"visible"   "0"
			"enabled"   "1"

			"paintbackground"   "1"
			"labelText"   "#Friends_AddFriend"
			"textAlignment"   "west"
			"wrap"    "0"
			"Default"   "0"
			"selected"    "0"
		}
		"FriendsState"
		{
			"ControlName"   "EditablePanel"
			"fieldName"   "FriendsState"
			"xpos"    "6"
			"ypos"    "52"
			"wide"    "310"
			"tall"    "457"
			"AutoResize"    "0"
			"PinCorner"   "0"
			"visible"   "0"
			"enabled"   "1"

			"paintbackground"   "1"
		}
		
		friends_search { ControlName=TextEntry maxchars=16 hintText="#steam_library_search" style="FriendsSearch" unicode=1 tabposition=2 }
		friends_search_icon	{ ControlName=Label style="FriendsSearchIcon" zpos="4" }		
		
	}

  
	styles
	{
		FriendsPanel
		{			
			bgcolor="dialogBG"
			render_bg
			{
				//1="image( x0, y0, x1, y1, graphics/clienttexture2)"
			}
		}	
		
		AddFriendsButton 
		{
			font-family=basefont
			font-size=11
			font-size=11 [$OSX]
			font-weight=normal
			padding-left=15
			padding-right=0
			textcolor="labelfocus"
			bgcolor=none  
			
			render_bg 
			{
				//1="image( x0, y0 + 4, x0 + 200, y1, graphics/icon_collapse )"
			}
		}
		   

		AddFriendsButton:hover
		{
			textcolor="white"
			render_bg
			{
				//0="image( x0, y0 + 4, x1, y1, graphics/icon_collapse_over )"
			}
		}	  	
		
		RootMenu
		{
			bgcolor="none"
		} 

				
		FriendsTitle 
		{
			inset="0 0 0 0"
		}

		FriendsTitle [$OSX]
		{
			font-family=basefont
			font-size=11
			font-weight=normal
			textcolor="textdisabled"
			bgcolor="none"
			inset="0 9 0 0"
		}

		FriendsTitle:FrameFocus [$OSX]
		{
			font-family=basefont
			font-size=11
			font-weight=normal
			textcolor="texthover"
			bgcolor="none"
			inset="0 9 0 0"
		}
		
		"MenuBar MenuButton"
		{
			padding-right=14
			render
			{
				//0="image( x1-18, y0 + 8, x1-0, y1, graphics/icon_down_default )"
			}
		}

		"MenuBar MenuButton:hover"
		{
			render
			{
				//0="image( x1-18, y0 + 8, x1-0, y1, graphics/icon_down_hover )"
			}
		}

		"MenuBar MenuButton:selected"
		{
			render
			{
				//0="image( x1-18, y0 + 8, x1-0, y1, graphics/icon_down_hover )"
			}
		}
		
		FriendsSearch
		{
			padding-left=-4
			padding-top=1
			font-family=basefont
			font-size=11
			font-weight=normal
			textcolor="text"	
			render { }	
			bgcolor=none
			render_bg
			{
				// background fill
				//0="fill( x0 + 1, y0 + 1, x1+1, y1, dialogbg )"
	     

				// single pixel fills in the corners
				
			}
		}
		
		FriendsSearch:empty
		{
			font-style=normal
			textcolor="LabelDisabled"
			
		}
		
		FriendsSearch:hover
		{	
			textcolor="texthover"	
		}
		
		FriendsSearch:empty:hover
		{
			font-style=normal
			textcolor="texthover"
			
		}
			
		FriendsSearch:disabled
		{
			font-style=normal
			textcolor="None"
			
		}
			
		FriendsSearchIcon
		{
			bgcolor="none"
			inset="6 2 0 0"
			image="graphics/icon_button_search"
			padding-left=0
			padding-right=-1
			padding-top=-1
			render_bg
			{
				// background fill
				//0="fill( x0 + 2, y0 - 1, x1 + 2, y1 +3, dialogbg )"
			}
		}
		
		FriendsSearchIcon:disabled
		{
			bgcolor="none"
			inset="2 0 0 0"
			image="none"
			padding-left=0
			padding-right=-1
			render_bg
			{
				// background fill
				//0="fill( x0 + 1, y0 + 1, x1 - 1, y1 - 1, dialogbg )"
			}
		}		
		
		
	}
 	
 	layout
 	{
		place 	[$OSX] { control="frame_title" align=center x=0 y=0 width=max height=20 }
		place 	[!$OSX] { control="frame_title" visible=0 x=0 y=0 width=max height=0 }

 		// the title bar is missing, so increase the size of the grip
		place { control="frame_captiongrip" margin=2 width=max height=38 }
		place [!$OSX] { control="MenuBar" margin-left=0 height=24 margin-top=2 }
		
	
		
		place { control="friends_search"  width=112 }	
		place { control="FriendPanelSelf,friends_search,FriendsDialogSheet" y=24 align=left margin-left=7 margin-right=7 margin-top=2 margin-bottom=38 width=max height=max dir=down spacing=3 }	
		place { control="friends_search_icon" margin-left=-2 start=FriendPanelSelf dir=down margin-top=5 }
		place { control="friends_search" start=friends_search_icon dir=right margin-right=9 y=-2 margin-bottom=38 width=max }
		place { control="addFriendsButton" align=bottom margin-left=16 margin-right=9 margin-bottom=7 height=24 }
 	}
 	
}


