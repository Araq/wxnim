


discard "forward decl of wxButton"
discard "forward decl of wxComboBox"
discard "forward decl of wxCheckBox"
discard "forward decl of wxTextCtrl"

const 
  ID_RICHTEXTOBJECTPROPERTIESDIALOG* = 10650

template symbol_Wxrichtextobjectpropertiesdialog_Style*(): expr = 
  wxDEFAULT_DIALOG_STYLE or wxTAB_TRAVERSAL

template symbol_Wxrichtextobjectpropertiesdialog_Title*(): expr = 
  "Object Properties"

template symbol_Wxrichtextobjectpropertiesdialog_Idname*(): expr = 
  WxWindowID(ID_RICHTEXTOBJECTPROPERTIESDIALOG)

template symbol_Wxrichtextobjectpropertiesdialog_Size*(): expr = 
  constructWxSize(400, 300)

template symbol_Wxrichtextobjectpropertiesdialog_Position*(): expr = 
  wxDefaultPosition


type 
  WxRichTextObjectPropertiesDialog* {.importcpp: "wxRichTextObjectPropertiesDialog", 
                                      header: wxh.} = object of WxRichTextFormattingDialog
  

proc constructwxRichTextObjectPropertiesDialog*(): WxRichTextObjectPropertiesDialog {.
    cdecl, constructor, importcpp: "wxRichTextObjectPropertiesDialog(@)", 
    header: wxh.}
proc constructwxRichTextObjectPropertiesDialog*(obj: ptr WxRichTextObject; 
    parent: ptr WxWindow; 
    id: WxWindowID = symbol_Wxrichtextobjectpropertiesdialog_Idname; 
    caption: WxString = symbol_Wxrichtextobjectpropertiesdialog_Title; 
    pos: WxPoint = symbol_Wxrichtextobjectpropertiesdialog_Position; 
    size: WxSize = symbol_Wxrichtextobjectpropertiesdialog_Size; 
    style: clong = symbol_Wxrichtextobjectpropertiesdialog_Style): WxRichTextObjectPropertiesDialog {.
    cdecl, constructor, importcpp: "wxRichTextObjectPropertiesDialog(@)", 
    header: wxh.}
proc create*(this: var WxRichTextObjectPropertiesDialog; 
             obj: ptr WxRichTextObject; parent: ptr WxWindow; 
             id: WxWindowID = symbol_Wxrichtextobjectpropertiesdialog_Idname; 
             caption: WxString = symbol_Wxrichtextobjectpropertiesdialog_Title; 
             pos: WxPoint = symbol_Wxrichtextobjectpropertiesdialog_Position; 
             size: WxSize = symbol_Wxrichtextobjectpropertiesdialog_Size; 
             style: clong = symbol_Wxrichtextobjectpropertiesdialog_Style): bool {.
    cdecl, importcpp: "Create", header: wxh.}
proc destroywxRichTextObjectPropertiesDialog*(
    this: var WxRichTextObjectPropertiesDialog) {.cdecl, 
    importcpp: "#.~wxRichTextObjectPropertiesDialog()", header: wxh.}
proc init*(this: var WxRichTextObjectPropertiesDialog) {.cdecl, 
    importcpp: "Init", header: wxh.}
proc createControls*(this: var WxRichTextObjectPropertiesDialog) {.cdecl, 
    importcpp: "CreateControls", header: wxh.}
proc getBitmapResource*(this: var WxRichTextObjectPropertiesDialog; 
                        name: WxString): WxBitmap {.cdecl, 
    importcpp: "GetBitmapResource", header: wxh.}
proc getIconResource*(this: var WxRichTextObjectPropertiesDialog; name: WxString): WxIcon {.
    cdecl, importcpp: "GetIconResource", header: wxh.}
