



discard "forward decl of wxStaticText"
discard "forward decl of wxComboBox"
discard "forward decl of wxTextCtrl"
discard "forward decl of wxSymbolListCtrl"
discard "forward decl of wxStdDialogButtonSizer"
const 
  ID_SYMBOLPICKERDIALOG* = 10600
  ID_SYMBOLPICKERDIALOG_FONT* = 10602
  ID_SYMBOLPICKERDIALOG_SUBSET* = 10605
  ID_SYMBOLPICKERDIALOG_LISTCTRL* = 10608
  ID_SYMBOLPICKERDIALOG_CHARACTERCODE* = 10601
  ID_SYMBOLPICKERDIALOG_FROM* = 10603

template symbol_Wxsymbolpickerdialog_Style*(): expr = 
  (wxDEFAULT_DIALOG_STYLE or wxRESIZE_BORDER or wxCLOSE_BOX)

template symbol_Wxsymbolpickerdialog_Title*(): expr = 
  "Symbols"

template symbol_Wxsymbolpickerdialog_Idname*(): expr = 
  WxWindowID(ID_SYMBOLPICKERDIALOG)

template symbol_Wxsymbolpickerdialog_Size*(): expr = 
  constructWxSize(400, 300)

template symbol_Wxsymbolpickerdialog_Position*(): expr = 
  wxDefaultPosition


type 
  WxSymbolPickerDialog* {.importcpp: "wxSymbolPickerDialog", header: wxh.} = object of WxDialog
    mFontCtrl* {.importc: "m_fontCtrl".}: ptr WxComboBox
    mSubsetCtrl* {.importc: "m_subsetCtrl".}: ptr WxComboBox
    mSymbolsCtrl* {.importc: "m_symbolsCtrl".}: ptr WxSymbolListCtrl
    mSymbolStaticCtrl* {.importc: "m_symbolStaticCtrl".}: ptr WxStaticText
    mCharacterCodeCtrl* {.importc: "m_characterCodeCtrl".}: ptr WxTextCtrl
    mFromUnicodeCtrl* {.importc: "m_fromUnicodeCtrl".}: ptr WxComboBox
    mStdButtonSizer* {.importc: "m_stdButtonSizer".}: ptr WxStdDialogButtonSizer
    mFontName* {.importc: "m_fontName".}: WxString
    mFromUnicode* {.importc: "m_fromUnicode".}: bool
    mNormalTextFontName* {.importc: "m_normalTextFontName".}: WxString
    mSymbol* {.importc: "m_symbol".}: WxString
    mDontUpdate* {.importc: "m_dontUpdate".}: bool


proc constructwxSymbolPickerDialog*(): WxSymbolPickerDialog {.cdecl, 
    constructor, importcpp: "wxSymbolPickerDialog(@)", header: wxh.}
proc constructwxSymbolPickerDialog*(symbol: WxString; fontName: WxString; 
                                    normalTextFont: WxString; 
                                    parent: ptr WxWindow; 
                                    id: WxWindowID = wxID_ANY; caption: WxString = symbol_Wxsymbolpickerdialog_Title; 
    pos: WxPoint = symbol_Wxsymbolpickerdialog_Position; size: WxSize = symbol_Wxsymbolpickerdialog_Size; 
    style: clong = symbol_Wxsymbolpickerdialog_Style): WxSymbolPickerDialog {.
    cdecl, constructor, importcpp: "wxSymbolPickerDialog(@)", header: wxh.}
proc create*(this: var WxSymbolPickerDialog; symbol: WxString; 
             fontName: WxString; normalTextFont: WxString; parent: ptr WxWindow; 
             id: WxWindowID = wxID_ANY; 
             caption: WxString = symbol_Wxsymbolpickerdialog_Title; 
             pos: WxPoint = symbol_Wxsymbolpickerdialog_Position; 
             size: WxSize = symbol_Wxsymbolpickerdialog_Size; 
             style: clong = symbol_Wxsymbolpickerdialog_Style): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc init*(this: var WxSymbolPickerDialog) {.cdecl, importcpp: "Init", 
    header: wxh.}
proc createControls*(this: var WxSymbolPickerDialog) {.cdecl, 
    importcpp: "CreateControls", header: wxh.}
proc updateSymbolDisplay*(this: var WxSymbolPickerDialog; 
                          updateSymbolList: bool = true; 
                          showAtSubset: bool = true) {.cdecl, 
    importcpp: "UpdateSymbolDisplay", header: wxh.}
proc onSymbolSelected*(this: var WxSymbolPickerDialog; event: var WxCommandEvent) {.
    cdecl, importcpp: "OnSymbolSelected", header: wxh.}
proc setUnicodeMode*(this: var WxSymbolPickerDialog; unicodeMode: bool) {.cdecl, 
    importcpp: "SetUnicodeMode", header: wxh.}
proc showAtSubset*(this: var WxSymbolPickerDialog) {.cdecl, 
    importcpp: "ShowAtSubset", header: wxh.}
proc getSymbolChar*(this: WxSymbolPickerDialog): cint {.noSideEffect, cdecl, 
    importcpp: "GetSymbolChar", header: wxh.}
proc hasSelection*(this: WxSymbolPickerDialog): bool {.noSideEffect, cdecl, 
    importcpp: "HasSelection", header: wxh.}
proc useNormalFont*(this: WxSymbolPickerDialog): bool {.noSideEffect, cdecl, 
    importcpp: "UseNormalFont", header: wxh.}
proc transferDataToWindow*(this: var WxSymbolPickerDialog): bool {.cdecl, 
    importcpp: "TransferDataToWindow", header: wxh.}
proc onFontCtrlSelected*(this: var WxSymbolPickerDialog; 
                         event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnFontCtrlSelected", header: wxh.}
proc onSubsetSelected*(this: var WxSymbolPickerDialog; event: var WxCommandEvent) {.
    cdecl, importcpp: "OnSubsetSelected", header: wxh.}
proc onSymbolpickerdialogSubsetUpdate*(this: var WxSymbolPickerDialog; 
                                       event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnSymbolpickerdialogSubsetUpdate", header: wxh.}
proc onFromUnicodeSelected*(this: var WxSymbolPickerDialog; 
                            event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnFromUnicodeSelected", header: wxh.}
proc onOkUpdate*(this: var WxSymbolPickerDialog; event: var WxUpdateUIEvent) {.
    cdecl, importcpp: "OnOkUpdate", header: wxh.}
proc onHelpClick*(this: var WxSymbolPickerDialog; event: var WxCommandEvent) {.
    cdecl, importcpp: "OnHelpClick", header: wxh.}
proc onHelpUpdate*(this: var WxSymbolPickerDialog; event: var WxUpdateUIEvent) {.
    cdecl, importcpp: "OnHelpUpdate", header: wxh.}
proc getFontName*(this: WxSymbolPickerDialog): WxString {.noSideEffect, cdecl, 
    importcpp: "GetFontName", header: wxh.}
proc setFontName*(this: var WxSymbolPickerDialog; value: WxString) {.cdecl, 
    importcpp: "SetFontName", header: wxh.}
proc getFromUnicode*(this: WxSymbolPickerDialog): bool {.noSideEffect, cdecl, 
    importcpp: "GetFromUnicode", header: wxh.}
proc setFromUnicode*(this: var WxSymbolPickerDialog; value: bool) {.cdecl, 
    importcpp: "SetFromUnicode", header: wxh.}
proc getNormalTextFontName*(this: WxSymbolPickerDialog): WxString {.
    noSideEffect, cdecl, importcpp: "GetNormalTextFontName", header: wxh.}
proc setNormalTextFontName*(this: var WxSymbolPickerDialog; value: WxString) {.
    cdecl, importcpp: "SetNormalTextFontName", header: wxh.}
proc getSymbol*(this: WxSymbolPickerDialog): WxString {.noSideEffect, cdecl, 
    importcpp: "GetSymbol", header: wxh.}
proc setSymbol*(this: var WxSymbolPickerDialog; value: WxString) {.cdecl, 
    importcpp: "SetSymbol", header: wxh.}
proc getBitmapResource*(this: var WxSymbolPickerDialog; name: WxString): WxBitmap {.
    cdecl, importcpp: "GetBitmapResource", header: wxh.}
proc getIconResource*(this: var WxSymbolPickerDialog; name: WxString): WxIcon {.
    cdecl, importcpp: "GetIconResource", header: wxh.}

type 
  WxSymbolListCtrl* {.importcpp: "wxSymbolListCtrl", header: wxh.} = object of WxWindow
  

proc constructwxSymbolListCtrl*(): WxSymbolListCtrl {.cdecl, constructor, 
    importcpp: "wxSymbolListCtrl(@)", header: wxh.}
proc constructwxSymbolListCtrl*(parent: ptr WxWindow; id: WxWindowID = wxID_ANY; 
                                pos: WxPoint = wxDefaultPosition; 
                                size: WxSize = wxDefaultSize; style: clong = 0; 
                                name: WxString = constructWxString("panel")): WxSymbolListCtrl {.
    cdecl, constructor, importcpp: "wxSymbolListCtrl(@)", header: wxh.}
proc create*(this: var WxSymbolListCtrl; parent: ptr WxWindow; 
             id: WxWindowID = wxID_ANY; pos: WxPoint = wxDefaultPosition; 
             size: WxSize = wxDefaultSize; style: clong = 0; 
             name: WxString = constructWxString("panel")): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc destroywxSymbolListCtrl*(this: var WxSymbolListCtrl) {.cdecl, 
    importcpp: "#.~wxSymbolListCtrl()", header: wxh.}
proc setFont*(this: var WxSymbolListCtrl; font: WxFont): bool {.cdecl, 
    importcpp: "SetFont", header: wxh.}
proc setUnicodeMode*(this: var WxSymbolListCtrl; unicodeMode: bool) {.cdecl, 
    importcpp: "SetUnicodeMode", header: wxh.}
proc getSelection*(this: WxSymbolListCtrl): cint {.noSideEffect, cdecl, 
    importcpp: "GetSelection", header: wxh.}
proc isSelected*(this: WxSymbolListCtrl; item: cint): bool {.noSideEffect, 
    cdecl, importcpp: "IsSelected", header: wxh.}
proc isCurrentItem*(this: WxSymbolListCtrl; item: cint): bool {.noSideEffect, 
    cdecl, importcpp: "IsCurrentItem", header: wxh.}
proc getMargins*(this: WxSymbolListCtrl): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetMargins", header: wxh.}
proc getSelectionBackground*(this: WxSymbolListCtrl): WxColour {.noSideEffect, 
    cdecl, importcpp: "GetSelectionBackground", header: wxh.}
proc setSelection*(this: var WxSymbolListCtrl; selection: cint) {.cdecl, 
    importcpp: "SetSelection", header: wxh.}
proc ensureVisible*(this: var WxSymbolListCtrl; item: cint) {.cdecl, 
    importcpp: "EnsureVisible", header: wxh.}
proc setMargins*(this: var WxSymbolListCtrl; pt: WxPoint) {.cdecl, 
    importcpp: "SetMargins", header: wxh.}
proc setMargins*(this: var WxSymbolListCtrl; x: WxCoord; y: WxCoord) {.cdecl, 
    importcpp: "SetMargins", header: wxh.}
proc setCellSize*(this: var WxSymbolListCtrl; sz: WxSize) {.cdecl, 
    importcpp: "SetCellSize", header: wxh.}
proc getCellSize*(this: WxSymbolListCtrl): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetCellSize", header: wxh.}
proc setSelectionBackground*(this: var WxSymbolListCtrl; col: WxColour) {.cdecl, 
    importcpp: "SetSelectionBackground", header: wxh.}
proc getDefaultAttributes*(this: WxSymbolListCtrl): WxVisualAttributes {.
    noSideEffect, cdecl, importcpp: "GetDefaultAttributes", header: wxh.}
proc getMinSymbolValue*(this: WxSymbolListCtrl): cint {.noSideEffect, cdecl, 
    importcpp: "GetMinSymbolValue", header: wxh.}
proc getMaxSymbolValue*(this: WxSymbolListCtrl): cint {.noSideEffect, cdecl, 
    importcpp: "GetMaxSymbolValue", header: wxh.}
proc onSize*(this: var WxSymbolListCtrl; event: var WxSizeEvent) {.cdecl, 
    importcpp: "OnSize", header: wxh.}
