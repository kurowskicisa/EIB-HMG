*-----------------------------------------------------------------------------*
#include "eib_hmg.ch"
*-----------------------------------------------------------------------------*


*-----------------------------------------------------------------------------*
PROCEDURE Show_TitleBar()
*-----------------------------------------------------------------------------*

  LOCAL hDC
  LOCAL BTstruct
  
  LOCAL nTypeText
  LOCAL nAlingText
  LOCAL nOrientation
  
  LOCAL hBMP

  hDC = BT_CreateDC( "win_Main" , BT_HDC_INVALIDCLIENTAREA , @BTstruct )

  nTypeText    := BT_TEXT_TRANSPARENT
  nAlingText   := BT_TEXT_LEFT + BT_TEXT_TOP
  nOrientation := 0


  BT_DrawText ( hDC , 2 * APP_ADJUST_Y , 45 * APP_ADJUST_X , NAZWA_PR , fARIAL , ( 20 + 1 ) * APP_ADJUST_Y , WHITE , BLUE , nTypeText , nAlingText , nOrientation )


  IF LEN( aDataBase ) > 0
  
    BT_DrawText ( hDC , 2 * APP_ADJUST_Y , 540 * APP_ADJUST_X , STR( LEN( aDataBase ) ) , fCOURIER , 20 * APP_ADJUST_Y , BLACK , BLUE , nTypeText , nAlingText , nOrientation )
    BT_DrawText ( hDC , 2 * APP_ADJUST_Y , 810 * APP_ADJUST_X , GetDateFile() , fCOURIER , 20 * APP_ADJUST_Y , BLACK , BLUE , nTypeText , nAlingText , nOrientation )

  ELSE
  
    BT_DrawText ( hDC , 2 * APP_ADJUST_Y , 540 * APP_ADJUST_X , "" , fCOURIER , 20 * APP_ADJUST_Y , BLACK , BLUE , nTypeText , nAlingText , nOrientation )
    BT_DrawText ( hDC , 2 * APP_ADJUST_Y , 810 * APP_ADJUST_X , "Brak danych. Pobierz dane --->>>" , fCOURIER , 20 * APP_ADJUST_Y , BLACK , BLUE , nTypeText , nAlingText , nOrientation )
  
  ENDIF


  hBMP :=  BT_BitmapLoadFile ( "APP_MAIN" )
  BT_DrawBitMap( hDC , 2 * APP_ADJUST_Y , 2 * APP_ADJUST_X , 32 * APP_ADJUST_Y , 32 * APP_ADJUST_X , BT_SCALE , hBMP )

  BT_BitmapRelease( hBMP )
  BTstruct [1] := BT_HDC_ALLCLIENTAREA

  BT_DeleteDC( BTstruct )

RETURN
*-----------------------------------------------------------------------------*


*-----------------------------------------------------------------------------*
*-----------------------------------------------------------------------------*
