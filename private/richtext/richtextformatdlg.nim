


discard "forward decl of wxRichTextFormattingDialog"
discard "forward decl of wxComboBox"
discard "forward decl of wxCheckBox"
const 
  wxRICHTEXT_FORMAT_STYLE_EDITOR* = 0x00000001
  wxRICHTEXT_FORMAT_FONT* = 0x00000002
  wxRICHTEXT_FORMAT_TABS* = 0x00000004
  wxRICHTEXT_FORMAT_BULLETS* = 0x00000008
  wxRICHTEXT_FORMAT_INDENTS_SPACING* = 0x00000010
  wxRICHTEXT_FORMAT_LIST_STYLE* = 0x00000020
  wxRICHTEXT_FORMAT_MARGINS* = 0x00000040
  wxRICHTEXT_FORMAT_SIZE* = 0x00000080
  wxRICHTEXT_FORMAT_BORDERS* = 0x00000100
  wxRICHTEXT_FORMAT_BACKGROUND* = 0x00000200
  wxRICHTEXT_FORMAT_HELP_BUTTON* = 0x00001000


const 
  wxRICHTEXT_BULLETINDEX_NONE* = 0
  wxRICHTEXT_BULLETINDEX_ARABIC* = 1
  wxRICHTEXT_BULLETINDEX_UPPER_CASE* = 2
  wxRICHTEXT_BULLETINDEX_LOWER_CASE* = 3
  wxRICHTEXT_BULLETINDEX_UPPER_CASE_ROMAN* = 4
  wxRICHTEXT_BULLETINDEX_LOWER_CASE_ROMAN* = 5
  wxRICHTEXT_BULLETINDEX_OUTLINE* = 6
  wxRICHTEXT_BULLETINDEX_SYMBOL* = 7
  wxRICHTEXT_BULLETINDEX_BITMAP* = 8
  wxRICHTEXT_BULLETINDEX_STANDARD* = 9


const 
  wxRICHTEXT_FORMAT_PARAGRAPH* = (wxRICHTEXT_FORMAT_INDENTS_SPACING or
      wxRICHTEXT_FORMAT_BULLETS or wxRICHTEXT_FORMAT_TABS or
      wxRICHTEXT_FORMAT_FONT)
  wxRICHTEXT_FORMAT_CHARACTER* = (wxRICHTEXT_FORMAT_FONT)
  wxRICHTEXT_FORMAT_STYLE* = (
    wxRICHTEXT_FORMAT_PARAGRAPH or wxRICHTEXT_FORMAT_STYLE_EDITOR)


type 
  WxRichTextFormattingDialogFactory* {.importcpp: "wxRichTextFormattingDialogFactory", 
                                       header: wxh.} = object of WxObject
  

proc constructwxRichTextFormattingDialogFactory*(): WxRichTextFormattingDialogFactory {.
    cdecl, constructor, importcpp: "wxRichTextFormattingDialogFactory(@)", 
    header: wxh.}
proc destroywxRichTextFormattingDialogFactory*(
    this: var WxRichTextFormattingDialogFactory) {.cdecl, 
    importcpp: "#.~wxRichTextFormattingDialogFactory()", header: wxh.}
proc createPages*(this: var WxRichTextFormattingDialogFactory; pages: clong; 
                  dialog: ptr WxRichTextFormattingDialog): bool {.cdecl, 
    importcpp: "CreatePages", header: wxh.}
proc createPage*(this: var WxRichTextFormattingDialogFactory; page: cint; 
                 title: var WxString; dialog: ptr WxRichTextFormattingDialog): ptr WxPanel {.
    cdecl, importcpp: "CreatePage", header: wxh.}
proc getPageId*(this: WxRichTextFormattingDialogFactory; i: cint): cint {.
    noSideEffect, cdecl, importcpp: "GetPageId", header: wxh.}
proc getPageIdCount*(this: WxRichTextFormattingDialogFactory): cint {.
    noSideEffect, cdecl, importcpp: "GetPageIdCount", header: wxh.}
proc getPageImage*(this: WxRichTextFormattingDialogFactory; id: cint): cint {.
    noSideEffect, cdecl, importcpp: "GetPageImage", header: wxh.}
proc showHelp*(this: var WxRichTextFormattingDialogFactory; page: cint; 
               dialog: ptr WxRichTextFormattingDialog): bool {.cdecl, 
    importcpp: "ShowHelp", header: wxh.}
proc setSheetStyle*(this: var WxRichTextFormattingDialogFactory; 
                    dialog: ptr WxRichTextFormattingDialog): bool {.cdecl, 
    importcpp: "SetSheetStyle", header: wxh.}
proc createButtons*(this: var WxRichTextFormattingDialogFactory; 
                    dialog: ptr WxRichTextFormattingDialog): bool {.cdecl, 
    importcpp: "CreateButtons", header: wxh.}

type 
  WxRichTextFormattingDialog* {.importcpp: "wxRichTextFormattingDialog", 
                                header: wxh.} = object of WxDialog
  

const 
  OptionAllowPixelFontSize* = 0x00000001

proc constructwxRichTextFormattingDialog*(): WxRichTextFormattingDialog {.cdecl, 
    constructor, importcpp: "wxRichTextFormattingDialog(@)", header: wxh.}
proc constructwxRichTextFormattingDialog*(flags: clong; parent: ptr WxWindow; 
    title: WxString = "Formatting"; id: WxWindowID = wxID_ANY; 
    pos: WxPoint = wxDefaultPosition; sz: WxSize = wxDefaultSize; 
    style: clong = wxDEFAULT_DIALOG_STYLE): WxRichTextFormattingDialog {.cdecl, 
    constructor, importcpp: "wxRichTextFormattingDialog(@)", header: wxh.}
proc destroywxRichTextFormattingDialog*(this: var WxRichTextFormattingDialog) {.
    cdecl, importcpp: "#.~wxRichTextFormattingDialog()", header: wxh.}
proc init*(this: var WxRichTextFormattingDialog) {.cdecl, importcpp: "Init", 
    header: wxh.}
proc create*(this: var WxRichTextFormattingDialog; flags: clong; 
             parent: ptr WxWindow; title: WxString = "Formatting"; 
             id: WxWindowID = wxID_ANY; pos: WxPoint = wxDefaultPosition; 
             sz: WxSize = wxDefaultSize; style: clong = wxDEFAULT_DIALOG_STYLE): bool {.
    cdecl, importcpp: "Create", header: wxh.}
proc getStyle*(this: var WxRichTextFormattingDialog; ctrl: ptr WxRichTextCtrl; 
               range: WxRichTextRange): bool {.cdecl, importcpp: "GetStyle", 
    header: wxh.}
proc setStyle*(this: var WxRichTextFormattingDialog; style: WxRichTextAttr; 
               update: bool = true): bool {.cdecl, importcpp: "SetStyle", 
    header: wxh.}
proc setStyleDefinition*(this: var WxRichTextFormattingDialog; 
                         styleDef: WxRichTextStyleDefinition; 
                         sheet: ptr WxRichTextStyleSheet; update: bool = true): bool {.
    cdecl, importcpp: "SetStyleDefinition", header: wxh.}
proc getStyleDefinition*(this: WxRichTextFormattingDialog): ptr WxRichTextStyleDefinition {.
    noSideEffect, cdecl, importcpp: "GetStyleDefinition", header: wxh.}
proc getStyleSheet*(this: WxRichTextFormattingDialog): ptr WxRichTextStyleSheet {.
    noSideEffect, cdecl, importcpp: "GetStyleSheet", header: wxh.}
proc updateDisplay*(this: var WxRichTextFormattingDialog): bool {.cdecl, 
    importcpp: "UpdateDisplay", header: wxh.}
proc applyStyle*(this: var WxRichTextFormattingDialog; ctrl: ptr WxRichTextCtrl; 
                 range: WxRichTextRange; flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO or
    wxRICHTEXT_SETSTYLE_OPTIMIZE): bool {.cdecl, importcpp: "ApplyStyle", 
    header: wxh.}
proc applyStyle*(this: var WxRichTextFormattingDialog; ctrl: ptr WxRichTextCtrl; 
                 flags: cint = wxRICHTEXT_SETSTYLE_WITH_UNDO): bool {.cdecl, 
    importcpp: "ApplyStyle", header: wxh.}
proc getAttributes*(this: WxRichTextFormattingDialog): WxRichTextAttr {.
    noSideEffect, cdecl, importcpp: "GetAttributes", header: wxh.}
proc getAttributes*(this: var WxRichTextFormattingDialog): var WxRichTextAttr {.
    cdecl, importcpp: "GetAttributes", header: wxh.}
proc setAttributes*(this: var WxRichTextFormattingDialog; attr: WxRichTextAttr) {.
    cdecl, importcpp: "SetAttributes", header: wxh.}
proc setOptions*(this: var WxRichTextFormattingDialog; options: cint) {.cdecl, 
    importcpp: "SetOptions", header: wxh.}
proc getOptions*(this: WxRichTextFormattingDialog): cint {.noSideEffect, cdecl, 
    importcpp: "GetOptions", header: wxh.}
proc hasOption*(this: WxRichTextFormattingDialog; option: cint): bool {.
    noSideEffect, cdecl, importcpp: "HasOption", header: wxh.}
proc getObject*(this: WxRichTextFormattingDialog): ptr WxRichTextObject {.
    noSideEffect, cdecl, importcpp: "GetObject", header: wxh.}
proc setObject*(this: var WxRichTextFormattingDialog; obj: ptr WxRichTextObject) {.
    cdecl, importcpp: "SetObject", header: wxh.}
proc transferDataToWindow*(this: var WxRichTextFormattingDialog): bool {.cdecl, 
    importcpp: "TransferDataToWindow", header: wxh.}
proc transferDataFromWindow*(this: var WxRichTextFormattingDialog): bool {.
    cdecl, importcpp: "TransferDataFromWindow", header: wxh.}
proc onTabChanged*(this: var WxRichTextFormattingDialog; 
                   event: var WxBookCtrlEvent) {.cdecl, 
    importcpp: "OnTabChanged", header: wxh.}
proc onHelp*(this: var WxRichTextFormattingDialog; event: var WxCommandEvent) {.
    cdecl, importcpp: "OnHelp", header: wxh.}
proc onUpdateHelp*(this: var WxRichTextFormattingDialog; 
                   event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnUpdateHelp", header: wxh.}
proc setFormattingDialogFactory*(factory: ptr WxRichTextFormattingDialogFactory) {.
    cdecl, 
    importcpp: "wxRichTextFormattingDialog::SetFormattingDialogFactory(@)", 
    header: wxh.}
proc getFormattingDialogFactory*(): ptr WxRichTextFormattingDialogFactory {.
    cdecl, 
    importcpp: "wxRichTextFormattingDialog::GetFormattingDialogFactory(@)", 
    header: wxh.}
proc getDialog*(win: ptr WxWindow): ptr WxRichTextFormattingDialog {.cdecl, 
    importcpp: "wxRichTextFormattingDialog::GetDialog(@)", header: wxh.}
proc getDialogAttributes*(win: ptr WxWindow): ptr WxRichTextAttr {.cdecl, 
    importcpp: "wxRichTextFormattingDialog::GetDialogAttributes(@)", header: wxh.}
proc getDialogResetAttributes*(win: ptr WxWindow): ptr WxRichTextAttr {.cdecl, 
    importcpp: "wxRichTextFormattingDialog::GetDialogResetAttributes(@)", 
    header: wxh.}
proc getDialogStyleDefinition*(win: ptr WxWindow): ptr WxRichTextStyleDefinition {.
    cdecl, importcpp: "wxRichTextFormattingDialog::GetDialogStyleDefinition(@)", 
    header: wxh.}
proc setShowToolTips*(show: bool) {.cdecl, importcpp: "wxRichTextFormattingDialog::SetShowToolTips(@)", 
                                    header: wxh.}
proc setDimensionValue*(dim: var WxTextAttrDimension; valueCtrl: ptr WxTextCtrl; 
                        unitsCtrl: ptr WxComboBox; checkBox: ptr WxCheckBox; 
                        units: ptr WxArrayInt = nil) {.cdecl, 
    importcpp: "wxRichTextFormattingDialog::SetDimensionValue(@)", header: wxh.}
proc getDimensionValue*(dim: var WxTextAttrDimension; valueCtrl: ptr WxTextCtrl; 
                        unitsCtrl: ptr WxComboBox; checkBox: ptr WxCheckBox; 
                        units: ptr WxArrayInt = nil) {.cdecl, 
    importcpp: "wxRichTextFormattingDialog::GetDimensionValue(@)", header: wxh.}
proc convertFromString*(str: WxString; ret: var cint; unit: cint): bool {.cdecl, 
    importcpp: "wxRichTextFormattingDialog::ConvertFromString(@)", header: wxh.}
proc addPageId*(this: var WxRichTextFormattingDialog; id: cint) {.cdecl, 
    importcpp: "AddPageId", header: wxh.}
proc findPage*(this: WxRichTextFormattingDialog; info: ptr WxClassInfo): ptr WxWindow {.
    noSideEffect, cdecl, importcpp: "FindPage", header: wxh.}

type 
  WxRichTextFontPreviewCtrl* {.importcpp: "wxRichTextFontPreviewCtrl", 
                               header: wxh.} = object of WxWindow
  

proc constructwxRichTextFontPreviewCtrl*(parent: ptr WxWindow; 
    id: WxWindowID = wxID_ANY; pos: WxPoint = wxDefaultPosition; 
    sz: WxSize = wxDefaultSize; style: clong = 0): WxRichTextFontPreviewCtrl {.
    cdecl, constructor, importcpp: "wxRichTextFontPreviewCtrl(@)", header: wxh.}
proc setTextEffects*(this: var WxRichTextFontPreviewCtrl; effects: cint) {.
    cdecl, importcpp: "SetTextEffects", header: wxh.}
proc getTextEffects*(this: WxRichTextFontPreviewCtrl): cint {.noSideEffect, 
    cdecl, importcpp: "GetTextEffects", header: wxh.}

type 
  WxRichTextColourSwatchCtrl* {.importcpp: "wxRichTextColourSwatchCtrl", 
                                header: wxh.} = object of WxControl
  

proc constructwxRichTextColourSwatchCtrl*(parent: ptr WxWindow; id: WxWindowID; 
    pos: WxPoint = wxDefaultPosition; size: WxSize = wxDefaultSize; 
    style: clong = 0): WxRichTextColourSwatchCtrl {.cdecl, constructor, 
    importcpp: "wxRichTextColourSwatchCtrl(@)", header: wxh.}
proc destroywxRichTextColourSwatchCtrl*(this: var WxRichTextColourSwatchCtrl) {.
    cdecl, importcpp: "#.~wxRichTextColourSwatchCtrl()", header: wxh.}
proc onMouseEvent*(this: var WxRichTextColourSwatchCtrl; event: var WxMouseEvent) {.
    cdecl, importcpp: "OnMouseEvent", header: wxh.}
proc setColour*(this: var WxRichTextColourSwatchCtrl; colour: WxColour) {.cdecl, 
    importcpp: "SetColour", header: wxh.}
proc getColour*(this: var WxRichTextColourSwatchCtrl): var WxColour {.cdecl, 
    importcpp: "GetColour", header: wxh.}
proc doGetBestSize*(this: WxRichTextColourSwatchCtrl): WxSize {.noSideEffect, 
    cdecl, importcpp: "DoGetBestSize", header: wxh.}

type 
  WxRichTextFontListBox* {.importcpp: "wxRichTextFontListBox", header: wxh.} = object of WxListBox
  

proc constructwxRichTextFontListBox*(): WxRichTextFontListBox {.cdecl, 
    constructor, importcpp: "wxRichTextFontListBox(@)", header: wxh.}
proc constructwxRichTextFontListBox*(parent: ptr WxWindow; 
                                     id: WxWindowID = wxID_ANY; 
                                     pos: WxPoint = wxDefaultPosition; 
                                     size: WxSize = wxDefaultSize; 
                                     style: clong = 0): WxRichTextFontListBox {.
    cdecl, constructor, importcpp: "wxRichTextFontListBox(@)", header: wxh.}
proc destroywxRichTextFontListBox*(this: var WxRichTextFontListBox) {.cdecl, 
    importcpp: "#.~wxRichTextFontListBox()", header: wxh.}
proc init*(this: var WxRichTextFontListBox) {.cdecl, importcpp: "Init", 
    header: wxh.}
proc create*(this: var WxRichTextFontListBox; parent: ptr WxWindow; 
             id: WxWindowID = wxID_ANY; pos: WxPoint = wxDefaultPosition; 
             size: WxSize = wxDefaultSize; style: clong = 0): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc createHTML*(this: WxRichTextFontListBox; facename: WxString): WxString {.
    noSideEffect, cdecl, importcpp: "CreateHTML", header: wxh.}
proc getFaceName*(this: WxRichTextFontListBox; i: csize): WxString {.
    noSideEffect, cdecl, importcpp: "GetFaceName", header: wxh.}
proc setFaceNameSelection*(this: var WxRichTextFontListBox; name: WxString): cint {.
    cdecl, importcpp: "SetFaceNameSelection", header: wxh.}
proc updateFonts*(this: var WxRichTextFontListBox) {.cdecl, 
    importcpp: "UpdateFonts", header: wxh.}
proc hasFaceName*(this: WxRichTextFontListBox; faceName: WxString): bool {.
    noSideEffect, cdecl, importcpp: "HasFaceName", header: wxh.}
proc getFaceNames*(this: WxRichTextFontListBox): WxArrayString {.noSideEffect, 
    cdecl, importcpp: "GetFaceNames", header: wxh.}

