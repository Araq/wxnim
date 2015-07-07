#/////////////////////////////////////////////////////////////////////////////
# Name:        wx/fontdlg.h
# Purpose:     common interface for different wxFontDialog classes
# Author:      Vadim Zeitlin
# Modified by:
# Created:     12.05.02
# Copyright:   (c) 1997-2002 wxWidgets team
# Licence:     wxWindows licence
#/////////////////////////////////////////////////////////////////////////////

# ----------------------------------------------------------------------------
# wxFontDialog interface
# ----------------------------------------------------------------------------

type 
  WxFontDialogBase* {.importcpp: "wxFontDialogBase", header: "wx.h".} = object of WxDialog # 
                                                                                           # create 
                                                                                           # the 
                                                                                           # font 
                                                                                           # dialog
    mFontData* {.importc: "m_fontData".}: WxFontData


proc constructwxFontDialogBase*(): WxFontDialogBase {.constructor, 
    importcpp: "wxFontDialogBase(@)", header: "wx.h".}
proc constructwxFontDialogBase*(parent: ptr WxWindow): WxFontDialogBase {.
    constructor, importcpp: "wxFontDialogBase(@)", header: "wx.h".}
proc constructwxFontDialogBase*(parent: ptr WxWindow; data: WxFontData): WxFontDialogBase {.
    constructor, importcpp: "wxFontDialogBase(@)", header: "wx.h".}
proc create*(this: var WxFontDialogBase; parent: ptr WxWindow): bool {.
    importcpp: "Create", header: "wx.h".}
proc create*(this: var WxFontDialogBase; parent: ptr WxWindow; data: WxFontData): bool {.
    importcpp: "Create", header: "wx.h".}
proc getFontData*(this: WxFontDialogBase): WxFontData {.noSideEffect, 
    importcpp: "GetFontData", header: "wx.h".}
proc getFontData*(this: var WxFontDialogBase): var WxFontData {.
    importcpp: "GetFontData", header: "wx.h".}
# get the font from user and return it, returns wxNullFont if the dialog was
# cancelled

proc wxGetFontFromUser*(parent: ptr WxWindow = nil; 
                        fontInit: WxFont = wxNullFont; 
                        caption: WxString = wxEmptyString): WxFont {.
    importcpp: "wxGetFontFromUser(@)", header: "wx.h".}
# _WX_FONTDLG_H_BASE_
