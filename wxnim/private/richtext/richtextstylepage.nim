


const 
  ID_RICHTEXTSTYLEPAGE* = 10403
  ID_RICHTEXTSTYLEPAGE_STYLE_NAME* = 10404
  ID_RICHTEXTSTYLEPAGE_BASED_ON* = 10405
  ID_RICHTEXTSTYLEPAGE_NEXT_STYLE* = 10406


template symbol_Wxrichtextstylepage_Style*(): untyped = 
  wxRESIZE_BORDER or wxTAB_TRAVERSAL

template symbol_Wxrichtextstylepage_Title*(): untyped = 
  wxEmptyString

template symbol_Wxrichtextstylepage_Idname*(): untyped = 
  WxWindowID(ID_RICHTEXTSTYLEPAGE)

template symbol_Wxrichtextstylepage_Size*(): untyped = 
  constructwxSize(400, 300)

template symbol_Wxrichtextstylepage_Position*(): untyped = 
  wxDefaultPosition


type 
  WxRichTextStylePage* {.importcpp: "wxRichTextStylePage", header: wxh.} = object of WxRichTextDialogPage
    mStyleName* {.importc: "m_styleName".}: ptr WxTextCtrl
    mBasedOn* {.importc: "m_basedOn".}: ptr WxComboBox
    mNextStyle* {.importc: "m_nextStyle".}: ptr WxComboBox


proc constructwxRichTextStylePage*(): WxRichTextStylePage {.cdecl, constructor, 
    importcpp: "wxRichTextStylePage(@)", header: wxh.}
proc constructwxRichTextStylePage*(parent: ptr WxWindow; 
                                   id: WxWindowID = wxID_ANY; pos: WxPoint = symbol_Wxrichtextstylepage_Position; 
    size: WxSize = symbol_Wxrichtextstylepage_Size; style: clong = symbol_Wxrichtextstylepage_Style): WxRichTextStylePage {.
    cdecl, constructor, importcpp: "wxRichTextStylePage(@)", header: wxh.}
proc create*(this: var WxRichTextStylePage; parent: ptr WxWindow; 
             id: WxWindowID = wxID_ANY; 
             pos: WxPoint = symbol_Wxrichtextstylepage_Position; 
             size: WxSize = symbol_Wxrichtextstylepage_Size; 
             style: clong = symbol_Wxrichtextstylepage_Style): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc init*(this: var WxRichTextStylePage) {.cdecl, importcpp: "Init", 
    header: wxh.}
proc createControls*(this: var WxRichTextStylePage) {.cdecl, 
    importcpp: "CreateControls", header: wxh.}
proc transferDataFromWindow*(this: var WxRichTextStylePage): bool {.cdecl, 
    importcpp: "TransferDataFromWindow", header: wxh.}
proc transferDataToWindow*(this: var WxRichTextStylePage): bool {.cdecl, 
    importcpp: "TransferDataToWindow", header: wxh.}
proc getAttributes*(this: var WxRichTextStylePage): ptr WxRichTextAttr {.cdecl, 
    importcpp: "GetAttributes", header: wxh.}
proc onNextStyleUpdate*(this: var WxRichTextStylePage; 
                        event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnNextStyleUpdate", header: wxh.}
proc getBitmapResource*(this: var WxRichTextStylePage; name: WxString): WxBitmap {.
    cdecl, importcpp: "GetBitmapResource", header: wxh.}
proc getIconResource*(this: var WxRichTextStylePage; name: WxString): WxIcon {.
    cdecl, importcpp: "GetIconResource", header: wxh.}
