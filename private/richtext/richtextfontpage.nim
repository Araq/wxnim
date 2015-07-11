




discard "forward decl of wxSpinButton"
discard "forward decl of wxBoxSizer"
discard "forward decl of wxRichTextFontListBox"
discard "forward decl of wxRichTextColourSwatchCtrl"
discard "forward decl of wxRichTextFontPreviewCtrl"
template symbol_Wxrichtextfontpage_Style*(): expr = 
  wxTAB_TRAVERSAL

template symbol_Wxrichtextfontpage_Title*(): expr = 
  wxEmptyString

template symbol_Wxrichtextfontpage_Idname*(): expr = 
  id_Richtextfontpage

template symbol_Wxrichtextfontpage_Size*(): expr = 
  constructWxSize(200, 100)

template symbol_Wxrichtextfontpage_Position*(): expr = 
  wxDefaultPosition


const 
  ID_RICHTEXTFONTPAGE* = 10000
  ID_RICHTEXTFONTPAGE_FACETEXTCTRL* = 10001
  ID_RICHTEXTFONTPAGE_SIZETEXTCTRL* = 10002
  ID_RICHTEXTFONTPAGE_SPINBUTTONS* = 10003
  ID_RICHTEXTFONTPAGE_SIZE_UNITS* = 10004
  ID_RICHTEXTFONTPAGE_FACELISTBOX* = 10005
  ID_RICHTEXTFONTPAGE_SIZELISTBOX* = 10006
  ID_RICHTEXTFONTPAGE_STYLECTRL* = 10007
  ID_RICHTEXTFONTPAGE_WEIGHTCTRL* = 10008
  ID_RICHTEXTFONTPAGE_UNDERLINING_CTRL* = 10009
  ID_RICHTEXTFONTPAGE_COLOURCTRL_LABEL* = 10010
  ID_RICHTEXTFONTPAGE_COLOURCTRL* = 10011
  ID_RICHTEXTFONTPAGE_BGCOLOURCTRL_LABEL* = 10012
  ID_RICHTEXTFONTPAGE_BGCOLOURCTRL* = 10013
  ID_RICHTEXTFONTPAGE_STRIKETHROUGHCTRL* = 10014
  ID_RICHTEXTFONTPAGE_CAPSCTRL* = 10015
  ID_RICHTEXTFONTPAGE_SMALLCAPSCTRL* = 10016
  ID_RICHTEXTFONTPAGE_SUPERSCRIPT* = 10017
  ID_RICHTEXTFONTPAGE_SUBSCRIPT* = 10018
  ID_RICHTEXTFONTPAGE_PREVIEWCTRL* = 10019


type 
  WxRichTextFontPage* {.importcpp: "wxRichTextFontPage", header: wxh.} = object of WxRichTextDialogPage
    mFaceTextCtrl* {.importc: "m_faceTextCtrl".}: ptr WxTextCtrl
    mSizeTextCtrl* {.importc: "m_sizeTextCtrl".}: ptr WxTextCtrl
    mFontSizeSpinButtons* {.importc: "m_fontSizeSpinButtons".}: ptr WxSpinButton
    mSizeUnitsCtrl* {.importc: "m_sizeUnitsCtrl".}: ptr WxChoice
    mFontListBoxParent* {.importc: "m_fontListBoxParent".}: ptr WxBoxSizer
    mFaceListBox* {.importc: "m_faceListBox".}: ptr WxRichTextFontListBox
    mSizeListBox* {.importc: "m_sizeListBox".}: ptr WxListBox
    mStyleCtrl* {.importc: "m_styleCtrl".}: ptr WxComboBox
    mWeightCtrl* {.importc: "m_weightCtrl".}: ptr WxComboBox
    mUnderliningCtrl* {.importc: "m_underliningCtrl".}: ptr WxComboBox
    mTextColourLabel* {.importc: "m_textColourLabel".}: ptr WxCheckBox
    mColourCtrl* {.importc: "m_colourCtrl".}: ptr WxRichTextColourSwatchCtrl
    mBgColourLabel* {.importc: "m_bgColourLabel".}: ptr WxCheckBox
    mBgColourCtrl* {.importc: "m_bgColourCtrl".}: ptr WxRichTextColourSwatchCtrl
    mStrikethroughCtrl* {.importc: "m_strikethroughCtrl".}: ptr WxCheckBox
    mCapitalsCtrl* {.importc: "m_capitalsCtrl".}: ptr WxCheckBox
    mSmallCapitalsCtrl* {.importc: "m_smallCapitalsCtrl".}: ptr WxCheckBox
    mSuperscriptCtrl* {.importc: "m_superscriptCtrl".}: ptr WxCheckBox
    mSubscriptCtrl* {.importc: "m_subscriptCtrl".}: ptr WxCheckBox
    mPreviewCtrl* {.importc: "m_previewCtrl".}: ptr WxRichTextFontPreviewCtrl
    mDontUpdate* {.importc: "m_dontUpdate".}: bool
    mColourPresent* {.importc: "m_colourPresent".}: bool
    mBgColourPresent* {.importc: "m_bgColourPresent".}: bool


proc constructwxRichTextFontPage*(): WxRichTextFontPage {.cdecl, constructor, 
    importcpp: "wxRichTextFontPage(@)", header: wxh.}
proc constructwxRichTextFontPage*(parent: ptr WxWindow; 
                                  id: WxWindowID = wxID_ANY; pos: WxPoint = symbol_Wxrichtextfontpage_Position; 
    size: WxSize = symbol_Wxrichtextfontpage_Size; style: clong = symbol_Wxrichtextfontpage_Style): WxRichTextFontPage {.
    cdecl, constructor, importcpp: "wxRichTextFontPage(@)", header: wxh.}
proc init*(this: var WxRichTextFontPage) {.cdecl, importcpp: "Init", header: wxh.}
proc create*(this: var WxRichTextFontPage; parent: ptr WxWindow; 
             id: WxWindowID = wxID_ANY; 
             pos: WxPoint = symbol_Wxrichtextfontpage_Position; 
             size: WxSize = symbol_Wxrichtextfontpage_Size; 
             style: clong = symbol_Wxrichtextfontpage_Style): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc createControls*(this: var WxRichTextFontPage) {.cdecl, 
    importcpp: "CreateControls", header: wxh.}
proc transferDataFromWindow*(this: var WxRichTextFontPage): bool {.cdecl, 
    importcpp: "TransferDataFromWindow", header: wxh.}
proc transferDataToWindow*(this: var WxRichTextFontPage): bool {.cdecl, 
    importcpp: "TransferDataToWindow", header: wxh.}
proc updatePreview*(this: var WxRichTextFontPage) {.cdecl, 
    importcpp: "UpdatePreview", header: wxh.}
proc onFaceListBoxSelected*(this: var WxRichTextFontPage; 
                            event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnFaceListBoxSelected", header: wxh.}
proc onColourClicked*(this: var WxRichTextFontPage; event: var WxCommandEvent) {.
    cdecl, importcpp: "OnColourClicked", header: wxh.}
proc getAttributes*(this: var WxRichTextFontPage): ptr WxRichTextAttr {.cdecl, 
    importcpp: "GetAttributes", header: wxh.}
proc onIdle*(this: var WxRichTextFontPage; event: var WxIdleEvent) {.cdecl, 
    importcpp: "OnIdle", header: wxh.}
proc onFaceTextCtrlUpdated*(this: var WxRichTextFontPage; 
                            event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnFaceTextCtrlUpdated", header: wxh.}
proc onSizeTextCtrlUpdated*(this: var WxRichTextFontPage; 
                            event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnSizeTextCtrlUpdated", header: wxh.}
proc onRichtextfontpageSpinbuttonsUp*(this: var WxRichTextFontPage; 
                                      event: var WxSpinEvent) {.cdecl, 
    importcpp: "OnRichtextfontpageSpinbuttonsUp", header: wxh.}
proc onRichtextfontpageSpinbuttonsDown*(this: var WxRichTextFontPage; 
                                        event: var WxSpinEvent) {.cdecl, 
    importcpp: "OnRichtextfontpageSpinbuttonsDown", header: wxh.}
proc onRichtextfontpageSizeUnitsSelected*(this: var WxRichTextFontPage; 
    event: var WxCommandEvent) {.cdecl, importcpp: "OnRichtextfontpageSizeUnitsSelected", 
                                 header: wxh.}
proc onSizeListBoxSelected*(this: var WxRichTextFontPage; 
                            event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnSizeListBoxSelected", header: wxh.}
proc onStyleCtrlSelected*(this: var WxRichTextFontPage; 
                          event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnStyleCtrlSelected", header: wxh.}
proc onWeightCtrlSelected*(this: var WxRichTextFontPage; 
                           event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnWeightCtrlSelected", header: wxh.}
proc onUnderliningCtrlSelected*(this: var WxRichTextFontPage; 
                                event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnUnderliningCtrlSelected", header: wxh.}
proc onStrikethroughctrlClick*(this: var WxRichTextFontPage; 
                               event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnStrikethroughctrlClick", header: wxh.}
proc onCapsctrlClick*(this: var WxRichTextFontPage; event: var WxCommandEvent) {.
    cdecl, importcpp: "OnCapsctrlClick", header: wxh.}
proc onRichtextfontpageSuperscriptClick*(this: var WxRichTextFontPage; 
    event: var WxCommandEvent) {.cdecl, importcpp: "OnRichtextfontpageSuperscriptClick", 
                                 header: wxh.}
proc onRichtextfontpageSubscriptClick*(this: var WxRichTextFontPage; 
                                       event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnRichtextfontpageSubscriptClick", header: wxh.}
proc getBitmapResource*(this: var WxRichTextFontPage; name: WxString): WxBitmap {.
    cdecl, importcpp: "GetBitmapResource", header: wxh.}
proc getIconResource*(this: var WxRichTextFontPage; name: WxString): WxIcon {.
    cdecl, importcpp: "GetIconResource", header: wxh.}
proc showToolTips*(): bool {.discardable, cdecl, 
                             importcpp: "wxRichTextFontPage::ShowToolTips(@)", 
                             header: wxh.}
