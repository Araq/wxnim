




const 
  ID_RICHTEXTINDENTSSPACINGPAGE* = 10100
  ID_RICHTEXTINDENTSSPACINGPAGE_ALIGNMENT_LEFT* = 10102
  ID_RICHTEXTINDENTSSPACINGPAGE_ALIGNMENT_RIGHT* = 10110
  ID_RICHTEXTINDENTSSPACINGPAGE_ALIGNMENT_JUSTIFIED* = 10111
  ID_RICHTEXTINDENTSSPACINGPAGE_ALIGNMENT_CENTRED* = 10112
  ID_RICHTEXTINDENTSSPACINGPAGE_ALIGNMENT_INDETERMINATE* = 10101
  ID_RICHTEXTINDENTSSPACINGPAGE_INDENT_LEFT* = 10103
  ID_RICHTEXTINDENTSSPACINGPAGE_INDENT_LEFT_FIRST* = 10104
  ID_RICHTEXTINDENTSSPACINGPAGE_INDENT_RIGHT* = 10113
  ID_RICHTEXTINDENTSSPACINGPAGE_OUTLINELEVEL* = 10105
  ID_RICHTEXTINDENTSSPACINGPAGE_SPACING_BEFORE* = 10114
  ID_RICHTEXTINDENTSSPACINGPAGE_SPACING_AFTER* = 10116
  ID_RICHTEXTINDENTSSPACINGPAGE_SPACING_LINE* = 10115
  ID_RICHTEXTINDENTSSPACINGPAGE_PAGEBREAK* = 10106
  ID_RICHTEXTINDENTSSPACINGPAGE_PREVIEW_CTRL* = 10109


discard "forward decl of wxRichTextCtrl"
template symbol_Wxrichtextindentsspacingpage_Style*(): untyped = 
  wxRESIZE_BORDER or wxTAB_TRAVERSAL

template symbol_Wxrichtextindentsspacingpage_Title*(): untyped = 
  wxEmptyString

template symbol_Wxrichtextindentsspacingpage_Idname*(): untyped = 
  WxWindowID(ID_RICHTEXTINDENTSSPACINGPAGE)

template symbol_Wxrichtextindentsspacingpage_Size*(): untyped = 
  constructWxSize(400, 300)

template symbol_Wxrichtextindentsspacingpage_Position*(): untyped = 
  wxDefaultPosition


type 
  WxRichTextIndentsSpacingPage* {.importcpp: "wxRichTextIndentsSpacingPage", 
                                  header: wxh.} = object of WxRichTextDialogPage
    mAlignmentLeft* {.importc: "m_alignmentLeft".}: ptr WxRadioButton
    mAlignmentRight* {.importc: "m_alignmentRight".}: ptr WxRadioButton
    mAlignmentJustified* {.importc: "m_alignmentJustified".}: ptr WxRadioButton
    mAlignmentCentred* {.importc: "m_alignmentCentred".}: ptr WxRadioButton
    mAlignmentIndeterminate* {.importc: "m_alignmentIndeterminate".}: ptr WxRadioButton
    mIndentLeft* {.importc: "m_indentLeft".}: ptr WxTextCtrl
    mIndentLeftFirst* {.importc: "m_indentLeftFirst".}: ptr WxTextCtrl
    mIndentRight* {.importc: "m_indentRight".}: ptr WxTextCtrl
    mOutlineLevelCtrl* {.importc: "m_outlineLevelCtrl".}: ptr WxComboBox
    mSpacingBefore* {.importc: "m_spacingBefore".}: ptr WxTextCtrl
    mSpacingAfter* {.importc: "m_spacingAfter".}: ptr WxTextCtrl
    mSpacingLine* {.importc: "m_spacingLine".}: ptr WxComboBox
    mPageBreakCtrl* {.importc: "m_pageBreakCtrl".}: ptr WxCheckBox
    mPreviewCtrl* {.importc: "m_previewCtrl".}: ptr WxRichTextCtrl
    mDontUpdate* {.importc: "m_dontUpdate".}: bool


proc constructwxRichTextIndentsSpacingPage*(): WxRichTextIndentsSpacingPage {.
    cdecl, constructor, importcpp: "wxRichTextIndentsSpacingPage(@)", 
    header: wxh.}
proc constructwxRichTextIndentsSpacingPage*(parent: ptr WxWindow; 
    id: WxWindowID = wxID_ANY; 
    pos: WxPoint = symbol_Wxrichtextindentsspacingpage_Position; 
    size: WxSize = symbol_Wxrichtextindentsspacingpage_Size; 
    style: clong = symbol_Wxrichtextindentsspacingpage_Style): WxRichTextIndentsSpacingPage {.
    cdecl, constructor, importcpp: "wxRichTextIndentsSpacingPage(@)", 
    header: wxh.}
proc create*(this: var WxRichTextIndentsSpacingPage; parent: ptr WxWindow; 
             id: WxWindowID = wxID_ANY; 
             pos: WxPoint = symbol_Wxrichtextindentsspacingpage_Position; 
             size: WxSize = symbol_Wxrichtextindentsspacingpage_Size; 
             style: clong = symbol_Wxrichtextindentsspacingpage_Style): bool {.
    cdecl, importcpp: "Create", header: wxh.}
proc init*(this: var WxRichTextIndentsSpacingPage) {.cdecl, importcpp: "Init", 
    header: wxh.}
proc createControls*(this: var WxRichTextIndentsSpacingPage) {.cdecl, 
    importcpp: "CreateControls", header: wxh.}
proc transferDataFromWindow*(this: var WxRichTextIndentsSpacingPage): bool {.
    cdecl, importcpp: "TransferDataFromWindow", header: wxh.}
proc transferDataToWindow*(this: var WxRichTextIndentsSpacingPage): bool {.
    cdecl, importcpp: "TransferDataToWindow", header: wxh.}
proc updatePreview*(this: var WxRichTextIndentsSpacingPage) {.cdecl, 
    importcpp: "UpdatePreview", header: wxh.}
proc getAttributes*(this: var WxRichTextIndentsSpacingPage): ptr WxRichTextAttr {.
    cdecl, importcpp: "GetAttributes", header: wxh.}
proc onAlignmentLeftSelected*(this: var WxRichTextIndentsSpacingPage; 
                              event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnAlignmentLeftSelected", header: wxh.}
proc onAlignmentRightSelected*(this: var WxRichTextIndentsSpacingPage; 
                               event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnAlignmentRightSelected", header: wxh.}
proc onAlignmentJustifiedSelected*(this: var WxRichTextIndentsSpacingPage; 
                                   event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnAlignmentJustifiedSelected", header: wxh.}
proc onAlignmentCentredSelected*(this: var WxRichTextIndentsSpacingPage; 
                                 event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnAlignmentCentredSelected", header: wxh.}
proc onAlignmentIndeterminateSelected*(this: var WxRichTextIndentsSpacingPage; 
                                       event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnAlignmentIndeterminateSelected", header: wxh.}
proc onIndentLeftUpdated*(this: var WxRichTextIndentsSpacingPage; 
                          event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnIndentLeftUpdated", header: wxh.}
proc onIndentLeftFirstUpdated*(this: var WxRichTextIndentsSpacingPage; 
                               event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnIndentLeftFirstUpdated", header: wxh.}
proc onIndentRightUpdated*(this: var WxRichTextIndentsSpacingPage; 
                           event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnIndentRightUpdated", header: wxh.}
proc onRichtextOutlinelevelSelected*(this: var WxRichTextIndentsSpacingPage; 
                                     event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnRichtextOutlinelevelSelected", header: wxh.}
proc onSpacingBeforeUpdated*(this: var WxRichTextIndentsSpacingPage; 
                             event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnSpacingBeforeUpdated", header: wxh.}
proc onSpacingAfterUpdated*(this: var WxRichTextIndentsSpacingPage; 
                            event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnSpacingAfterUpdated", header: wxh.}
proc onSpacingLineSelected*(this: var WxRichTextIndentsSpacingPage; 
                            event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnSpacingLineSelected", header: wxh.}
proc getBitmapResource*(this: var WxRichTextIndentsSpacingPage; name: WxString): WxBitmap {.
    cdecl, importcpp: "GetBitmapResource", header: wxh.}
proc getIconResource*(this: var WxRichTextIndentsSpacingPage; name: WxString): WxIcon {.
    cdecl, importcpp: "GetIconResource", header: wxh.}
