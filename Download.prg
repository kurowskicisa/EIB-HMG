*-----------------------------------------------------------------------------*
#include "eib_hmg.ch"
*-----------------------------------------------------------------------------*


*-----------------------------------------------------------------------------*
PROCEDURE Download()
*-----------------------------------------------------------------------------*

  DECLARE WINDOW win_Main
  DECLARE WINDOW win_Download


  IF !IsWIndowDefined( "win_Download" )


#IFDEF _HMG_2_

    LOAD WINDOW download2 AS win_Download

    win_Download.TitleBar := .F.
    win_Download.SysMenu  := .T.
    win_Download.Sizable  := .F.

#ENDIF


#IFDEF _HMG_3_

    LOAD WINDOW download3 AS win_Download

#ENDIF


    SetProperty( "win_Download", "frm_Main" ,"Caption" ,"" )
    SetProperty( "win_Download", "lbl_0"    ,"Value"   ,"" )

    SetProperty( "win_Download", "lbl_1"    ,"Value"   , "Pobieranie danych..." )


    ON KEY ALT+F4 OF win_Download ACTION { || NIL }


    AADD( aFrm , { "win_Download" , win_Download.Row, win_Download.Col } )

    win_Download.img_APPTitle.Picture  := "APP_MAIN"

    win_Download.Activate()

  ENDIF


RETURN
*-----------------------------------------------------------------------------*


*-----------------------------------------------------------------------------*
#include "Download_Events.prg"
*-----------------------------------------------------------------------------*


*-----------------------------------------------------------------------------*
*-----------------------------------------------------------------------------*
