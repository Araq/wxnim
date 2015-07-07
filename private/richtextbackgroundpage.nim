#///////////////////////////////////////////////////////////////////////////
# Name:        wx/richtext/richtextbackgroundpage.h
# Purpose:
# Author:      Julian Smart
# Modified by:
# Created:     13/11/2010 11:17:25
# RCS-ID:
# Copyright:   (c) Julian Smart
# Licence:
#///////////////////////////////////////////////////////////////////////////

#!
#  Includes
# 

#//@begin includes

#//@end includes
#!
#  Forward declarations
# 

discard "forward decl of wxRichTextColourSwatchCtrl"
const 
  SYMBOL_WXRICHTEXTBACKGROUNDPAGE_STYLE* = wxTAB_TRAVERSAL
  SYMBOL_WXRICHTEXTBACKGROUNDPAGE_TITLE* = wxEmptyString
  SYMBOL_WXRICHTEXTBACKGROUNDPAGE_IDNAME* = id_Richtextbackgroundpage
  SYMBOL_WXRICHTEXTBACKGROUNDPAGE_SIZE* = wxSize(400, 300)
  SYMBOL_WXRICHTEXTBACKGROUNDPAGE_POSITION* = wxDefaultPosition

#//@end control identifiers
#!
#  wxRichTextBackgroundPage class declaration
# 

type 
  WxRichTextBackgroundPage* {.importcpp: "wxRichTextBackgroundPage", 
                              header: "wx.h".} = object of WxRichTextDialogPage #/ Constructors
    wxRichTextBackgroundPage* {.importc: "wxRichTextBackgroundPage".}: Declare_Dynamic_Class
    mBackgroundColourCheckBox* {.importc: "m_backgroundColourCheckBox".}: ptr WxCheckBox
    mBackgroundColourSwatch* {.importc: "m_backgroundColourSwatch".}: ptr WxRichTextColourSwatchCtrl #/ Control identifiers
                                                                                                     #//@end wxRichTextBackgroundPage member variables
  

proc constructwxRichTextBackgroundPage*(): WxRichTextBackgroundPage {.
    constructor, importcpp: "wxRichTextBackgroundPage(@)", header: "wx.h".}
proc constructwxRichTextBackgroundPage*(parent: ptr WxWindow; id: WxWindowID = symbol_Wxrichtextbackgroundpage_Idname; 
    pos: WxPoint = symbol_Wxrichtextbackgroundpage_Position; size: WxSize = symbol_Wxrichtextbackgroundpage_Size; 
    style: clong = symbol_Wxrichtextbackgroundpage_Style): WxRichTextBackgroundPage {.
    constructor, importcpp: "wxRichTextBackgroundPage(@)", header: "wx.h".}
proc create*(this: var WxRichTextBackgroundPage; parent: ptr WxWindow; 
             id: WxWindowID = symbol_Wxrichtextbackgroundpage_Idname; 
             pos: WxPoint = symbol_Wxrichtextbackgroundpage_Position; 
             size: WxSize = symbol_Wxrichtextbackgroundpage_Size; 
             style: clong = symbol_Wxrichtextbackgroundpage_Style): bool {.
    importcpp: "Create", header: "wx.h".}
proc destroywxRichTextBackgroundPage*(this: var WxRichTextBackgroundPage) {.
    importcpp: "#.~wxRichTextBackgroundPage()", header: "wx.h".}
proc init*(this: var WxRichTextBackgroundPage) {.importcpp: "Init", 
    header: "wx.h".}
proc createControls*(this: var WxRichTextBackgroundPage) {.
    importcpp: "CreateControls", header: "wx.h".}
proc getAttributes*(this: var WxRichTextBackgroundPage): ptr WxRichTextAttr {.
    importcpp: "GetAttributes", header: "wx.h".}
proc transferDataToWindow*(this: var WxRichTextBackgroundPage): bool {.
    importcpp: "TransferDataToWindow", header: "wx.h".}
proc transferDataFromWindow*(this: var WxRichTextBackgroundPage): bool {.
    importcpp: "TransferDataFromWindow", header: "wx.h".}
proc onColourSwatch*(this: var WxRichTextBackgroundPage; 
                     event: var WxCommandEvent) {.importcpp: "OnColourSwatch", 
    header: "wx.h".}
proc getBitmapResource*(this: var WxRichTextBackgroundPage; name: WxString): WxBitmap {.
    importcpp: "GetBitmapResource", header: "wx.h".}
proc getIconResource*(this: var WxRichTextBackgroundPage; name: WxString): WxIcon {.
    importcpp: "GetIconResource", header: "wx.h".}
proc showToolTips*(): bool {.importcpp: "wxRichTextBackgroundPage::ShowToolTips(@)", 
                             header: "wx.h".}
const 
  ID_RICHTEXTBACKGROUNDPAGE* = 10845
  ID_RICHTEXT_BACKGROUND_COLOUR_CHECKBOX* = 10846
  ID_RICHTEXT_BACKGROUND_COLOUR_SWATCH* = 10847

# _RICHTEXTBACKGROUNDPAGE_H_
