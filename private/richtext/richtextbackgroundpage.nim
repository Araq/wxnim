




discard "forward decl of wxRichTextColourSwatchCtrl"
const 
  ID_RICHTEXTBACKGROUNDPAGE* = 10845
  ID_RICHTEXT_BACKGROUND_COLOUR_CHECKBOX* = 10846
  ID_RICHTEXT_BACKGROUND_COLOUR_SWATCH* = 10847


template symbol_Wxrichtextbackgroundpage_Style*(): expr = 
  wxTAB_TRAVERSAL

template symbol_Wxrichtextbackgroundpage_Title*(): expr = 
  wxEmptyString

template symbol_Wxrichtextbackgroundpage_Idname*(): expr = 
  WxWindowID(ID_RICHTEXTBACKGROUNDPAGE)

template symbol_Wxrichtextbackgroundpage_Size*(): expr = 
  constructWxSize(400, 300)

template symbol_Wxrichtextbackgroundpage_Position*(): expr = 
  wxDefaultPosition


type 
  WxRichTextBackgroundPage* {.importcpp: "wxRichTextBackgroundPage", header: wxh.} = object of WxRichTextDialogPage
    mBackgroundColourCheckBox* {.importc: "m_backgroundColourCheckBox".}: ptr WxCheckBox
    mBackgroundColourSwatch* {.importc: "m_backgroundColourSwatch".}: ptr WxRichTextColourSwatchCtrl


proc constructwxRichTextBackgroundPage*(): WxRichTextBackgroundPage {.cdecl, 
    constructor, importcpp: "wxRichTextBackgroundPage(@)", header: wxh.}
proc constructwxRichTextBackgroundPage*(parent: ptr WxWindow; id: WxWindowID = symbol_Wxrichtextbackgroundpage_Idname; 
    pos: WxPoint = symbol_Wxrichtextbackgroundpage_Position; size: WxSize = symbol_Wxrichtextbackgroundpage_Size; 
    style: clong = symbol_Wxrichtextbackgroundpage_Style): WxRichTextBackgroundPage {.
    cdecl, constructor, importcpp: "wxRichTextBackgroundPage(@)", header: wxh.}
proc create*(this: var WxRichTextBackgroundPage; parent: ptr WxWindow; 
             id: WxWindowID = symbol_Wxrichtextbackgroundpage_Idname; 
             pos: WxPoint = symbol_Wxrichtextbackgroundpage_Position; 
             size: WxSize = symbol_Wxrichtextbackgroundpage_Size; 
             style: clong = symbol_Wxrichtextbackgroundpage_Style): bool {.
    cdecl, importcpp: "Create", header: wxh.}
proc destroywxRichTextBackgroundPage*(this: var WxRichTextBackgroundPage) {.
    cdecl, importcpp: "#.~wxRichTextBackgroundPage()", header: wxh.}
proc init*(this: var WxRichTextBackgroundPage) {.cdecl, importcpp: "Init", 
    header: wxh.}
proc createControls*(this: var WxRichTextBackgroundPage) {.cdecl, 
    importcpp: "CreateControls", header: wxh.}
proc getAttributes*(this: var WxRichTextBackgroundPage): ptr WxRichTextAttr {.
    cdecl, importcpp: "GetAttributes", header: wxh.}
proc transferDataToWindow*(this: var WxRichTextBackgroundPage): bool {.cdecl, 
    importcpp: "TransferDataToWindow", header: wxh.}
proc transferDataFromWindow*(this: var WxRichTextBackgroundPage): bool {.cdecl, 
    importcpp: "TransferDataFromWindow", header: wxh.}
proc onColourSwatch*(this: var WxRichTextBackgroundPage; 
                     event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnColourSwatch", header: wxh.}
proc getBitmapResource*(this: var WxRichTextBackgroundPage; name: WxString): WxBitmap {.
    cdecl, importcpp: "GetBitmapResource", header: wxh.}
proc getIconResource*(this: var WxRichTextBackgroundPage; name: WxString): WxIcon {.
    cdecl, importcpp: "GetIconResource", header: wxh.}
