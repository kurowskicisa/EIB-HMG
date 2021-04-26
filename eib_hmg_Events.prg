*-----------------------------------------------------------------------------*
PROCEDURE win_main_OnInit()
*-----------------------------------------------------------------------------*

  CTK_DrawBorder( "win_Main" )

  DO_Events()

  DataBaseInit()


#IFDEF _HMG_3_

  win_Main.Hide

  aFrm := CTK_Minimize( aFrm )

  win_Main.Restore

  win_Main.Show

#ENDIF


  IF LEN( aDataBase ) == 0

    DownloadQuestion( "Brak danych" ) 

  ENDIF


RETURN
*-----------------------------------------------------------------------------*


#IFDEF _HMG_3_
*-----------------------------------------------------------------------------*
PROCEDURE win_main_OnPaint()
*-----------------------------------------------------------------------------*
  
  Show_TitleBar()
  
  DO_Events()
		
RETURN
*-----------------------------------------------------------------------------*
#ENDIF


*-----------------------------------------------------------------------------*
PROCEDURE win_Main_btn_About_Action()
*-----------------------------------------------------------------------------*

  About()

RETURN
*-----------------------------------------------------------------------------*


*-----------------------------------------------------------------------------*
PROCEDURE win_Main_btn_DownloadCSV_Action()
*-----------------------------------------------------------------------------*

  IF LEN( aDataBase ) == 0
  
    DownloadQuestion( "Brak danych" )
	
  ELSE
  
    DownloadQuestion( "Aktualiazja danych" )
  
  ENDIF 


RETURN
*-----------------------------------------------------------------------------*


*-----------------------------------------------------------------------------*
PROCEDURE win_Main_btn_ExitPR()
*-----------------------------------------------------------------------------*

  EndOfProgram()

RETURN
*-----------------------------------------------------------------------------*


*-----------------------------------------------------------------------------*
PROCEDURE win_Main_btn_MinPR()
*-----------------------------------------------------------------------------*

  aFrm := CTK_Minimize( aFrm )

RETURN
*-----------------------------------------------------------------------------*


*-----------------------------------------------------------------------------*
PROCEDURE win_Main_txb_Name_OnChange()
*-----------------------------------------------------------------------------*

  ClearRecords()
  SetNavigation()
  win_Main_lbl_Find_Action()

RETURN
*-----------------------------------------------------------------------------*


*-----------------------------------------------------------------------------*
PROCEDURE win_Main_txb_Address_OnChange()
*-----------------------------------------------------------------------------*

  ClearRecords()
  SetNavigation()
  win_Main_lbl_Find_Action()

RETURN
*-----------------------------------------------------------------------------*


*-----------------------------------------------------------------------------*
PROCEDURE win_Main_txb_Place_OnChange()
*-----------------------------------------------------------------------------*

  ClearRecords()
  SetNavigation()
  win_Main_lbl_Find_Action()

RETURN
*-----------------------------------------------------------------------------*


*-----------------------------------------------------------------------------*
PROCEDURE win_Main_lbl_Name_Action()
*-----------------------------------------------------------------------------*

  MEMVAR nPage

  win_Main.txb_Name.Value := ""

  do_events()
  win_Main.lbl_BackGround.Setfocus()

  ViewData( nPage )

RETURN
*-----------------------------------------------------------------------------*


*-----------------------------------------------------------------------------*
PROCEDURE win_Main_lbl_Name_OnMouseHover()
*-----------------------------------------------------------------------------*

  win_Main.lbl_Name.Backcolor := { 000 , 170 , 000 }
  win_Main.lbl_Name.FontColor := { 255 , 255 , 255 }

RETURN
*-----------------------------------------------------------------------------*


*-----------------------------------------------------------------------------*
PROCEDURE win_Main_lbl_Name_Leave()
*-----------------------------------------------------------------------------*

  win_Main.lbl_Name.Backcolor := { 255 , 255 , 255 }
  win_Main.lbl_Name.FontColor := { 000 , 170 , 000 }

RETURN
*-----------------------------------------------------------------------------*


*-----------------------------------------------------------------------------*
PROCEDURE win_Main_lbl_Address_Action()
*-----------------------------------------------------------------------------*

  MEMVAR nPage

  win_Main.txb_Address.Value := ""

  do_events()
  win_Main.lbl_BackGround.Setfocus()

  ViewData( nPage )

RETURN
*-----------------------------------------------------------------------------*


*-----------------------------------------------------------------------------*
PROCEDURE win_Main_lbl_Address_OnMouseHover()
*-----------------------------------------------------------------------------*

  win_Main.lbl_Address.Backcolor := { 000 , 170 , 000 }
  win_Main.lbl_Address.FontColor := { 255 , 255 , 255 }

RETURN
*-----------------------------------------------------------------------------*


*-----------------------------------------------------------------------------*
PROCEDURE win_Main_lbl_Address_Leave()
*-----------------------------------------------------------------------------*

  win_Main.lbl_Address.Backcolor := { 255 , 255 , 255 }
  win_Main.lbl_Address.FontColor := { 000 , 170 , 000 }

RETURN
*-----------------------------------------------------------------------------*


*-----------------------------------------------------------------------------*
PROCEDURE win_Main_lbl_Place_Action()
*-----------------------------------------------------------------------------*

  MEMVAR nPage

  win_Main.txb_Place.Value := ""

  do_events()
  win_Main.lbl_BackGround.Setfocus()

  ViewData( nPage )

RETURN
*-----------------------------------------------------------------------------*


*-----------------------------------------------------------------------------*
PROCEDURE win_Main_lbl_Place_OnMouseHover()
*-----------------------------------------------------------------------------*

  win_Main.lbl_Place.Backcolor := { 000 , 170 , 000 }
  win_Main.lbl_Place.FontColor := { 255 , 255 , 255 }

RETURN
*-----------------------------------------------------------------------------*


*-----------------------------------------------------------------------------*
PROCEDURE win_Main_lbl_Place_Leave()
*-----------------------------------------------------------------------------*

  win_Main.lbl_Place.Backcolor := { 255 , 255 , 255 }
  win_Main.lbl_Place.FontColor := { 000 , 170 , 000 }

RETURN
*-----------------------------------------------------------------------------*


*-----------------------------------------------------------------------------*
PROCEDURE win_Main_lbl_Find_Action()
*-----------------------------------------------------------------------------*

  MEMVAR aDataBase
  MEMVAR nPage

  aDataBase := {}

  CSV2Memeory( ;
      ALLTRIM( win_Main.txb_Name.Value    ) ;
    , ALLTRIM( win_Main.txb_Address.Value ) ;
    , ALLTRIM( win_Main.txb_Place.Value   ) ;
    )

  nPage := 1

  ViewData( nPage )

RETURN
*-----------------------------------------------------------------------------*


*-----------------------------------------------------------------------------*
PROCEDURE win_Main_lbl_First_Action()
*-----------------------------------------------------------------------------*

  MEMVAR nPage

  win_Main.lbl_BackGround.Setfocus()

  nPage := 1

  ViewData( nPage )

RETURN
*-----------------------------------------------------------------------------*


*-----------------------------------------------------------------------------*
PROCEDURE win_Main_lbl_First_OnMouseHover()
*-----------------------------------------------------------------------------*

  win_Main.lbl_First.Backcolor := { 000 , 170 , 000 }
  win_Main.lbl_First.FontColor := { 255 , 255 , 255 }

RETURN
*-----------------------------------------------------------------------------*


*-----------------------------------------------------------------------------*
PROCEDURE win_Main_lbl_First_Leave()
*-----------------------------------------------------------------------------*

  win_Main.lbl_First.Backcolor := { 255 , 255 , 255 }
  win_Main.lbl_First.FontColor := { 000 , 170 , 000 }

RETURN
*-----------------------------------------------------------------------------*


*-----------------------------------------------------------------------------*
PROCEDURE win_Main_lbl_Prior_Action()
*-----------------------------------------------------------------------------*

  MEMVAR nPage

  win_Main.lbl_BackGround.Setfocus()


  IF nPage - 1 > 0

    nPage--

  ENDIF


  ViewData( nPage )

RETURN
*-----------------------------------------------------------------------------*


*-----------------------------------------------------------------------------*
PROCEDURE win_Main_lbl_Prior_OnMouseHover()
*-----------------------------------------------------------------------------*

  win_Main.lbl_Prior.Backcolor := { 000 , 170 , 000 }
  win_Main.lbl_Prior.FontColor := { 255 , 255 , 255 }

RETURN
*-----------------------------------------------------------------------------*


*-----------------------------------------------------------------------------*
PROCEDURE win_Main_lbl_Prior_Leave()
*-----------------------------------------------------------------------------*

  win_Main.lbl_Prior.Backcolor := { 255 , 255 , 255 }
  win_Main.lbl_Prior.FontColor := { 000 , 170 , 000 }

RETURN
*-----------------------------------------------------------------------------*


*-----------------------------------------------------------------------------*
PROCEDURE win_Main_lbl_Next_Action()
*-----------------------------------------------------------------------------*

  MEMVAR aDataBase
  MEMVAR nPage

  win_Main.lbl_BackGround.Setfocus()


  IF nPage + 1 < ( ( INT ( LEN( aDataBase ) / 5 ) ) + 1 ) + 1
                     
    nPage++

  ENDIF


  ViewData( nPage )

RETURN
*-----------------------------------------------------------------------------*


*-----------------------------------------------------------------------------*
PROCEDURE win_Main_lbl_Next_OnMouseHover()
*-----------------------------------------------------------------------------*

  win_Main.lbl_Next.Backcolor := { 000 , 170 , 000 }
  win_Main.lbl_Next.FontColor := { 255 , 255 , 255 }

RETURN
*-----------------------------------------------------------------------------*


*-----------------------------------------------------------------------------*
PROCEDURE win_Main_lbl_Next_Leave()
*-----------------------------------------------------------------------------*

  win_Main.lbl_Next.Backcolor := { 255 , 255 , 255 }
  win_Main.lbl_Next.FontColor := { 000 , 170 , 000 }

RETURN
*-----------------------------------------------------------------------------*


*-----------------------------------------------------------------------------*
PROCEDURE win_Main_lbl_Last_Action()
*-----------------------------------------------------------------------------*

  MEMVAR aDataBase
  MEMVAR nPage

  win_Main.lbl_BackGround.Setfocus()
  

  IF INT ( LEN( aDataBase ) / 5 ) == ( LEN( aDataBase ) / 5 )

    nPage := ( ( INT ( LEN( aDataBase ) / 5 ) )     )

  ELSE

    nPage := ( ( INT ( LEN( aDataBase ) / 5 ) ) + 1 )

  ENDIF                   


  ViewData( nPage )

RETURN
*-----------------------------------------------------------------------------*


*-----------------------------------------------------------------------------*
PROCEDURE win_Main_lbl_Last_OnMouseHover()
*-----------------------------------------------------------------------------*

  win_Main.lbl_Last.Backcolor := { 000 , 170 , 000 }
  win_Main.lbl_Last.FontColor := { 255 , 255 , 255 }

RETURN
*-----------------------------------------------------------------------------*


*-----------------------------------------------------------------------------*
PROCEDURE win_Main_lbl_Last_Leave()
*-----------------------------------------------------------------------------*

  win_Main.lbl_Last.Backcolor := { 255 , 255 , 255 }
  win_Main.lbl_Last.FontColor := { 000 , 170 , 000 }

RETURN
*-----------------------------------------------------------------------------*


*-----------------------------------------------------------------------------*
PROCEDURE win_Main_lbl_EPUAP_Action()
*-----------------------------------------------------------------------------*

  ShellExecute ( 0 , "open" , "http://epuap.gov.pl" , , , 1 ) 

RETURN
*-----------------------------------------------------------------------------*


*-----------------------------------------------------------------------------*
PROCEDURE win_Main_lbl_csv_Action()
*-----------------------------------------------------------------------------*

  ShellExecute ( 0 , "open" , "https://epuap.gov.pl/LESP/LESP.csv" , , , 1 ) 

RETURN
*-----------------------------------------------------------------------------*


*-----------------------------------------------------------------------------*
PROCEDURE win_Main_lbl_xml_Action()
*-----------------------------------------------------------------------------*

  ShellExecute ( 0 , "open" , "https://epuap.gov.pl/LESP/LESP.xml" , , , 1 ) 

RETURN
*-----------------------------------------------------------------------------*


*-----------------------------------------------------------------------------*
*-----------------------------------------------------------------------------*
