




discard "forward decl of wxRichTextColourSwatchCtrl"
const 
  SYMBOL_WXRICHTEXTBACKGROUNDPAGE_STYLE* = wxTAB_TRAVERSAL
  SYMBOL_WXRICHTEXTBACKGROUNDPAGE_TITLE* = wxEmptyString
  SYMBOL_WXRICHTEXTBACKGROUNDPAGE_IDNAME* = id_Richtextbackgroundpage
  SYMBOL_WXRICHTEXTBACKGROUNDPAGE_SIZE* = wxSize(400, 300)
  SYMBOL_WXRICHTEXTBACKGROUNDPAGE_POSITION* = wxDefaultPosition


type 
  WxRichTextBackgroundPage* {.importcpp: "wxRichTextBackgroundPage", 
                              header: "<wx/wx.h>".} = object of WxRichTextDialogPage
    mBackgroundColourCheckBox* {.importc: "m_backgroundColourCheckBox".}: ptr WxCheckBox
    mBackgroundColourSwatch* {.importc: "m_backgroundColourSwatch".}: ptr WxRichTextColourSwatchCtrl


proc constructwxRichTextBackgroundPage*(): WxRichTextBackgroundPage {.cdecl, 
    constructor, importcpp: "wxRichTextBackgroundPage(@)", header: "<wx/wx.h>".}
proc constructwxRichTextBackgroundPage*(parent: ptr WxWindow; id: WxWindowID = symbol_Wxrichtextbackgroundpage_Idname; 
    pos: WxPoint = symbol_Wxrichtextbackgroundpage_Position; size: WxSize = symbol_Wxrichtextbackgroundpage_Size; 
    style: clong = symbol_Wxrichtextbackgroundpage_Style): WxRichTextBackgroundPage {.
    cdecl, constructor, importcpp: "wxRichTextBackgroundPage(@)", 
    header: "<wx/wx.h>".}
proc create*(this: var WxRichTextBackgroundPage; parent: ptr WxWindow; 
             id: WxWindowID = symbol_Wxrichtextbackgroundpage_Idname; 
             pos: WxPoint = symbol_Wxrichtextbackgroundpage_Position; 
             size: WxSize = symbol_Wxrichtextbackgroundpage_Size; 
             style: clong = symbol_Wxrichtextbackgroundpage_Style): bool {.
    cdecl, importcpp: "Create", header: "<wx/wx.h>".}
proc destroywxRichTextBackgroundPage*(this: var WxRichTextBackgroundPage) {.
    cdecl, importcpp: "#.~wxRichTextBackgroundPage()", header: "<wx/wx.h>".}
proc init*(this: var WxRichTextBackgroundPage) {.cdecl, importcpp: "Init", 
    header: "<wx/wx.h>".}
proc createControls*(this: var WxRichTextBackgroundPage) {.cdecl, 
    importcpp: "CreateControls", header: "<wx/wx.h>".}
proc getAttributes*(this: var WxRichTextBackgroundPage): ptr WxRichTextAttr {.
    cdecl, importcpp: "GetAttributes", header: "<wx/wx.h>".}
proc transferDataToWindow*(this: var WxRichTextBackgroundPage): bool {.cdecl, 
    importcpp: "TransferDataToWindow", header: "<wx/wx.h>".}
proc transferDataFromWindow*(this: var WxRichTextBackgroundPage): bool {.cdecl, 
    importcpp: "TransferDataFromWindow", header: "<wx/wx.h>".}
proc onColourSwatch*(this: var WxRichTextBackgroundPage; 
                     event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnColourSwatch", header: "<wx/wx.h>".}
proc getBitmapResource*(this: var WxRichTextBackgroundPage; name: WxString): WxBitmap {.
    cdecl, importcpp: "GetBitmapResource", header: "<wx/wx.h>".}
proc getIconResource*(this: var WxRichTextBackgroundPage; name: WxString): WxIcon {.
    cdecl, importcpp: "GetIconResource", header: "<wx/wx.h>".}
proc showToolTips*(): bool {.cdecl, importcpp: "wxRichTextBackgroundPage::ShowToolTips(@)", 
                             header: "<wx/wx.h>".}
const 
  ID_RICHTEXTBACKGROUNDPAGE* = 10845
  ID_RICHTEXT_BACKGROUND_COLOUR_CHECKBOX* = 10846
  ID_RICHTEXT_BACKGROUND_COLOUR_SWATCH* = 10847

