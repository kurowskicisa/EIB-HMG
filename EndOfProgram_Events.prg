*-----------------------------------------------------------------------------*
PROCEDURE win_EndOfProgram_btn_YES()
*-----------------------------------------------------------------------------*

  RELEASE WINDOW ALL

RETURN
*-----------------------------------------------------------------------------*


*-----------------------------------------------------------------------------*
PROCEDURE win_EndOfProgram_btn_NOT()
*-----------------------------------------------------------------------------*

  ViewData( nPage )

  aFrm := CTK_Release( aFrm )

  ThisWindow.Release

RETURN
*-----------------------------------------------------------------------------*


*-----------------------------------------------------------------------------*
PROCEDURE win_EndOfProgram_OnGotFocus()
*-----------------------------------------------------------------------------*

  CenterModalWindow( "win_EndOfProgram" )

  AutoAdjustControls( "win_EndOfProgram" )

  CTK_DrawBorder( "win_EndOfProgram" )

RETURN
*-----------------------------------------------------------------------------*


*-----------------------------------------------------------------------------*
*-----------------------------------------------------------------------------*
