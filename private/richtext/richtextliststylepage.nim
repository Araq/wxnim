




const 
  ID_RICHTEXTLISTSTYLEPAGE* = 10616
  ID_RICHTEXTLISTSTYLEPAGE_LEVEL* = 10617
  ID_RICHTEXTLISTSTYLEPAGE_CHOOSE_FONT* = 10604
  ID_RICHTEXTLISTSTYLEPAGE_NOTEBOOK* = 10618
  ID_RICHTEXTLISTSTYLEPAGE_BULLETS* = 10619
  ID_RICHTEXTLISTSTYLEPAGE_STYLELISTBOX* = 10620
  ID_RICHTEXTLISTSTYLEPAGE_PERIODCTRL* = 10627
  ID_RICHTEXTLISTSTYLEPAGE_PARENTHESESCTRL* = 10626
  ID_RICHTEXTLISTSTYLEPAGE_RIGHTPARENTHESISCTRL* = 10602
  ID_RICHTEXTLISTSTYLEPAGE_BULLETALIGNMENTCTRL* = 10603
  ID_RICHTEXTLISTSTYLEPAGE_SYMBOLSTATIC* = 10621
  ID_RICHTEXTLISTSTYLEPAGE_SYMBOLCTRL* = 10622
  ID_RICHTEXTLISTSTYLEPAGE_CHOOSE_SYMBOL* = 10623
  ID_RICHTEXTLISTSTYLEPAGE_SYMBOLFONTCTRL* = 10625
  ID_RICHTEXTLISTSTYLEPAGE_NAMESTATIC* = 10600
  ID_RICHTEXTLISTSTYLEPAGE_NAMECTRL* = 10601
  ID_RICHTEXTLISTSTYLEPAGE_SPACING* = 10628
  ID_RICHTEXTLISTSTYLEPAGE_ALIGNLEFT* = 10629
  ID_RICHTEXTLISTSTYLEPAGE_ALIGNRIGHT* = 10630
  ID_RICHTEXTLISTSTYLEPAGE_JUSTIFIED* = 10631
  ID_RICHTEXTLISTSTYLEPAGE_CENTERED* = 10632
  ID_RICHTEXTLISTSTYLEPAGE_ALIGNINDETERMINATE* = 10633
  ID_RICHTEXTLISTSTYLEPAGE_INDENTLEFT* = 10634
  ID_RICHTEXTLISTSTYLEPAGE_INDENTFIRSTLINE* = 10635
  ID_RICHTEXTLISTSTYLEPAGE_INDENTRIGHT* = 10636
  ID_RICHTEXTLISTSTYLEPAGE_SPACINGBEFORE* = 10637
  ID_RICHTEXTLISTSTYLEPAGE_SPACINGAFTER* = 10638
  ID_RICHTEXTLISTSTYLEPAGE_LINESPACING* = 10639
  ID_RICHTEXTLISTSTYLEPAGE_RICHTEXTCTRL* = 10640


template symbol_Wxrichtextliststylepage_Style*(): expr = 
  wxRESIZE_BORDER or wxTAB_TRAVERSAL

template symbol_Wxrichtextliststylepage_Title*(): expr = 
  wxEmptyString

template symbol_Wxrichtextliststylepage_Idname*(): expr = 
  WxWindowID(ID_RICHTEXTLISTSTYLEPAGE)

template symbol_Wxrichtextliststylepage_Size*(): expr = 
  constructWxSize(400, 300)

template symbol_Wxrichtextliststylepage_Position*(): expr = 
  wxDefaultPosition


type 
  WxRichTextListStylePage* {.importcpp: "wxRichTextListStylePage", header: wxh.} = object of WxRichTextDialogPage
    mLevelCtrl* {.importc: "m_levelCtrl".}: ptr WxSpinCtrl
    mStyleListBox* {.importc: "m_styleListBox".}: ptr WxListBox
    mPeriodCtrl* {.importc: "m_periodCtrl".}: ptr WxCheckBox
    mParenthesesCtrl* {.importc: "m_parenthesesCtrl".}: ptr WxCheckBox
    mRightParenthesisCtrl* {.importc: "m_rightParenthesisCtrl".}: ptr WxCheckBox
    mBulletAlignmentCtrl* {.importc: "m_bulletAlignmentCtrl".}: ptr WxComboBox
    mSymbolCtrl* {.importc: "m_symbolCtrl".}: ptr WxComboBox
    mSymbolFontCtrl* {.importc: "m_symbolFontCtrl".}: ptr WxComboBox
    mBulletNameCtrl* {.importc: "m_bulletNameCtrl".}: ptr WxComboBox
    mAlignmentLeft* {.importc: "m_alignmentLeft".}: ptr WxRadioButton
    mAlignmentRight* {.importc: "m_alignmentRight".}: ptr WxRadioButton
    mAlignmentJustified* {.importc: "m_alignmentJustified".}: ptr WxRadioButton
    mAlignmentCentred* {.importc: "m_alignmentCentred".}: ptr WxRadioButton
    mAlignmentIndeterminate* {.importc: "m_alignmentIndeterminate".}: ptr WxRadioButton
    mIndentLeft* {.importc: "m_indentLeft".}: ptr WxTextCtrl
    mIndentLeftFirst* {.importc: "m_indentLeftFirst".}: ptr WxTextCtrl
    mIndentRight* {.importc: "m_indentRight".}: ptr WxTextCtrl
    mSpacingBefore* {.importc: "m_spacingBefore".}: ptr WxTextCtrl
    mSpacingAfter* {.importc: "m_spacingAfter".}: ptr WxTextCtrl
    mSpacingLine* {.importc: "m_spacingLine".}: ptr WxComboBox
    mPreviewCtrl* {.importc: "m_previewCtrl".}: ptr WxRichTextCtrl
    mDontUpdate* {.importc: "m_dontUpdate".}: bool
    mCurrentLevel* {.importc: "m_currentLevel".}: cint


proc constructwxRichTextListStylePage*(): WxRichTextListStylePage {.cdecl, 
    constructor, importcpp: "wxRichTextListStylePage(@)", header: wxh.}
proc constructwxRichTextListStylePage*(parent: ptr WxWindow; 
                                       id: WxWindowID = wxID_ANY; pos: WxPoint = symbol_Wxrichtextliststylepage_Position; 
    size: WxSize = symbol_Wxrichtextliststylepage_Size; style: clong = symbol_Wxrichtextliststylepage_Style): WxRichTextListStylePage {.
    cdecl, constructor, importcpp: "wxRichTextListStylePage(@)", header: wxh.}
proc create*(this: var WxRichTextListStylePage; parent: ptr WxWindow; 
             id: WxWindowID = wxID_ANY; 
             pos: WxPoint = symbol_Wxrichtextliststylepage_Position; 
             size: WxSize = symbol_Wxrichtextliststylepage_Size; 
             style: clong = symbol_Wxrichtextliststylepage_Style): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc init*(this: var WxRichTextListStylePage) {.cdecl, importcpp: "Init", 
    header: wxh.}
proc createControls*(this: var WxRichTextListStylePage) {.cdecl, 
    importcpp: "CreateControls", header: wxh.}
proc updatePreview*(this: var WxRichTextListStylePage) {.cdecl, 
    importcpp: "UpdatePreview", header: wxh.}
proc transferDataFromWindow*(this: var WxRichTextListStylePage): bool {.cdecl, 
    importcpp: "TransferDataFromWindow", header: wxh.}
proc transferDataToWindow*(this: var WxRichTextListStylePage): bool {.cdecl, 
    importcpp: "TransferDataToWindow", header: wxh.}
proc getAttributesForSelection*(this: var WxRichTextListStylePage): ptr WxRichTextAttr {.
    cdecl, importcpp: "GetAttributesForSelection", header: wxh.}
proc onSymbolUpdate*(this: var WxRichTextListStylePage; 
                     event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnSymbolUpdate", header: wxh.}
proc onNumberUpdate*(this: var WxRichTextListStylePage; 
                     event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnNumberUpdate", header: wxh.}
proc onStandardBulletUpdate*(this: var WxRichTextListStylePage; 
                             event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnStandardBulletUpdate", header: wxh.}
proc doTransferDataToWindow*(this: var WxRichTextListStylePage) {.cdecl, 
    importcpp: "DoTransferDataToWindow", header: wxh.}
proc transferAndPreview*(this: var WxRichTextListStylePage) {.cdecl, 
    importcpp: "TransferAndPreview", header: wxh.}
proc onLevelUpdated*(this: var WxRichTextListStylePage; event: var WxSpinEvent) {.
    cdecl, importcpp: "OnLevelUpdated", header: wxh.}
proc onLevelUp*(this: var WxRichTextListStylePage; event: var WxSpinEvent) {.
    cdecl, importcpp: "OnLevelUp", header: wxh.}
proc onLevelDown*(this: var WxRichTextListStylePage; event: var WxSpinEvent) {.
    cdecl, importcpp: "OnLevelDown", header: wxh.}
proc onLevelTextUpdated*(this: var WxRichTextListStylePage; 
                         event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnLevelTextUpdated", header: wxh.}
proc onLevelUIUpdate*(this: var WxRichTextListStylePage; 
                      event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnLevelUIUpdate", header: wxh.}
proc onChooseFontClick*(this: var WxRichTextListStylePage; 
                        event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnChooseFontClick", header: wxh.}
proc onStylelistboxSelected*(this: var WxRichTextListStylePage; 
                             event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnStylelistboxSelected", header: wxh.}
proc onPeriodctrlClick*(this: var WxRichTextListStylePage; 
                        event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnPeriodctrlClick", header: wxh.}
proc onPeriodctrlUpdate*(this: var WxRichTextListStylePage; 
                         event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnPeriodctrlUpdate", header: wxh.}
proc onParenthesesctrlClick*(this: var WxRichTextListStylePage; 
                             event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnParenthesesctrlClick", header: wxh.}
proc onParenthesesctrlUpdate*(this: var WxRichTextListStylePage; 
                              event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnParenthesesctrlUpdate", header: wxh.}
proc onRightParenthesisCtrlClick*(this: var WxRichTextListStylePage; 
                                  event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnRightParenthesisCtrlClick", header: wxh.}
proc onRightParenthesisCtrlUpdate*(this: var WxRichTextListStylePage; 
                                   event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnRightParenthesisCtrlUpdate", header: wxh.}
proc onBulletAlignmentCtrlSelected*(this: var WxRichTextListStylePage; 
                                    event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnBulletAlignmentCtrlSelected", header: wxh.}
proc onSymbolstaticUpdate*(this: var WxRichTextListStylePage; 
                           event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnSymbolstaticUpdate", header: wxh.}
proc onSymbolctrlSelected*(this: var WxRichTextListStylePage; 
                           event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnSymbolctrlSelected", header: wxh.}
proc onSymbolctrlUpdated*(this: var WxRichTextListStylePage; 
                          event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnSymbolctrlUpdated", header: wxh.}
proc onSymbolctrlUIUpdate*(this: var WxRichTextListStylePage; 
                           event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnSymbolctrlUIUpdate", header: wxh.}
proc onChooseSymbolClick*(this: var WxRichTextListStylePage; 
                          event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnChooseSymbolClick", header: wxh.}
proc onChooseSymbolUpdate*(this: var WxRichTextListStylePage; 
                           event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnChooseSymbolUpdate", header: wxh.}
proc onSymbolfontctrlSelected*(this: var WxRichTextListStylePage; 
                               event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnSymbolfontctrlSelected", header: wxh.}
proc onSymbolfontctrlUpdated*(this: var WxRichTextListStylePage; 
                              event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnSymbolfontctrlUpdated", header: wxh.}
proc onSymbolfontctrlUIUpdate*(this: var WxRichTextListStylePage; 
                               event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnSymbolfontctrlUIUpdate", header: wxh.}
proc onNamestaticUpdate*(this: var WxRichTextListStylePage; 
                         event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnNamestaticUpdate", header: wxh.}
proc onNamectrlSelected*(this: var WxRichTextListStylePage; 
                         event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnNamectrlSelected", header: wxh.}
proc onNamectrlUpdated*(this: var WxRichTextListStylePage; 
                        event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnNamectrlUpdated", header: wxh.}
proc onNamectrlUIUpdate*(this: var WxRichTextListStylePage; 
                         event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnNamectrlUIUpdate", header: wxh.}
proc onRichtextliststylepageAlignleftSelected*(
    this: var WxRichTextListStylePage; event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnRichtextliststylepageAlignleftSelected", header: wxh.}
proc onRichtextliststylepageAlignrightSelected*(
    this: var WxRichTextListStylePage; event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnRichtextliststylepageAlignrightSelected", header: wxh.}
proc onRichtextliststylepageJustifiedSelected*(
    this: var WxRichTextListStylePage; event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnRichtextliststylepageJustifiedSelected", header: wxh.}
proc onRichtextliststylepageCenteredSelected*(this: var WxRichTextListStylePage; 
    event: var WxCommandEvent) {.cdecl, importcpp: "OnRichtextliststylepageCenteredSelected", 
                                 header: wxh.}
proc onRichtextliststylepageAlignindeterminateSelected*(
    this: var WxRichTextListStylePage; event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnRichtextliststylepageAlignindeterminateSelected", header: wxh.}
proc onIndentLeftUpdated*(this: var WxRichTextListStylePage; 
                          event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnIndentLeftUpdated", header: wxh.}
proc onIndentFirstLineUpdated*(this: var WxRichTextListStylePage; 
                               event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnIndentFirstLineUpdated", header: wxh.}
proc onIndentRightUpdated*(this: var WxRichTextListStylePage; 
                           event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnIndentRightUpdated", header: wxh.}
proc onSpacingBeforeUpdated*(this: var WxRichTextListStylePage; 
                             event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnSpacingBeforeUpdated", header: wxh.}
proc onSpacingAfterUpdated*(this: var WxRichTextListStylePage; 
                            event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnSpacingAfterUpdated", header: wxh.}
proc onLineSpacingSelected*(this: var WxRichTextListStylePage; 
                            event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnLineSpacingSelected", header: wxh.}
proc getBitmapResource*(this: var WxRichTextListStylePage; name: WxString): WxBitmap {.
    cdecl, importcpp: "GetBitmapResource", header: wxh.}
proc getIconResource*(this: var WxRichTextListStylePage; name: WxString): WxIcon {.
    cdecl, importcpp: "GetIconResource", header: wxh.}
