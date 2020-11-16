




discard "forward decl of wxRichTextColourSwatchCtrl"
discard "forward decl of wxRichTextBorderPreviewCtrl"
const 
  ID_RICHTEXTBORDERSPAGE* = 10800
  ID_RICHTEXTBORDERSPAGE_NOTEBOOK* = 10801
  ID_RICHTEXTBORDERSPAGE_BORDERS* = 10802
  ID_RICHTEXT_BORDER_LEFT_CHECKBOX* = 10803
  ID_RICHTEXT_BORDER_LEFT* = 10804
  ID_RICHTEXT_BORDER_LEFT_UNITS* = 10805
  ID_RICHTEXT_BORDER_LEFT_STYLE* = 10806
  ID_RICHTEXT_BORDER_LEFT_COLOUR* = 10807
  ID_RICHTEXT_BORDER_RIGHT_CHECKBOX* = 10808
  ID_RICHTEXT_BORDER_RIGHT* = 10809
  ID_RICHTEXT_BORDER_RIGHT_UNITS* = 10810
  ID_RICHTEXT_BORDER_RIGHT_STYLE* = 10811
  ID_RICHTEXT_BORDER_RIGHT_COLOUR* = 10812
  ID_RICHTEXT_BORDER_TOP_CHECKBOX* = 10813
  ID_RICHTEXT_BORDER_TOP* = 10814
  ID_RICHTEXT_BORDER_TOP_UNITS* = 10815
  ID_RICHTEXT_BORDER_TOP_STYLE* = 10816
  ID_RICHTEXT_BORDER_TOP_COLOUR* = 10817
  ID_RICHTEXT_BORDER_BOTTOM_CHECKBOX* = 10818
  ID_RICHTEXT_BORDER_BOTTOM* = 10819
  ID_RICHTEXT_BORDER_BOTTOM_UNITS* = 10820
  ID_RICHTEXT_BORDER_BOTTOM_STYLE* = 10821
  ID_RICHTEXT_BORDER_BOTTOM_COLOUR* = 10822
  ID_RICHTEXT_BORDER_SYNCHRONIZE* = 10845
  ID_RICHTEXTBORDERSPAGE_OUTLINE* = 10823
  ID_RICHTEXT_OUTLINE_LEFT_CHECKBOX* = 10824
  ID_RICHTEXT_OUTLINE_LEFT* = 10825
  ID_RICHTEXT_OUTLINE_LEFT_UNITS* = 10826
  ID_RICHTEXT_OUTLINE_LEFT_STYLE* = 10827
  ID_RICHTEXT_OUTLINE_LEFT_COLOUR* = 10828
  ID_RICHTEXT_OUTLINE_RIGHT_CHECKBOX* = 10829
  ID_RICHTEXT_OUTLINE_RIGHT* = 10830
  ID_RICHTEXT_OUTLINE_RIGHT_UNITS* = 10831
  ID_RICHTEXT_OUTLINE_RIGHT_STYLE* = 10832
  ID_RICHTEXT_OUTLINE_RIGHT_COLOUR* = 10833
  ID_RICHTEXT_OUTLINE_TOP_CHECKBOX* = 10834
  ID_RICHTEXT_OUTLINE_TOP* = 10835
  ID_RICHTEXT_OUTLINE_TOP_UNITS* = 10836
  ID_RICHTEXT_OUTLINE_TOP_STYLE* = 10837
  ID_RICHTEXT_OUTLINE_TOP_COLOUR* = 10838
  ID_RICHTEXT_OUTLINE_BOTTOM_CHECKBOX* = 10839
  ID_RICHTEXT_OUTLINE_BOTTOM* = 10840
  ID_RICHTEXT_OUTLINE_BOTTOM_UNITS* = 10841
  ID_RICHTEXT_OUTLINE_BOTTOM_STYLE* = 10842
  ID_RICHTEXT_OUTLINE_BOTTOM_COLOUR* = 10843
  ID_RICHTEXT_OUTLINE_SYNCHRONIZE* = 10846
  ID_RICHTEXT_BORDER_PREVIEW* = 10844


template symbol_Wxrichtextborderspage_Style*(): untyped = 
  wxTAB_TRAVERSAL

template symbol_Wxrichtextborderspage_Title*(): untyped = 
  wxEmptyString

template symbol_Wxrichtextborderspage_Idname*(): untyped = 
  WxWindowID(ID_RICHTEXTBORDERSPAGE)

template symbol_Wxrichtextborderspage_Size*(): untyped = 
  constructwxSize(400, 300)

template symbol_Wxrichtextborderspage_Position*(): untyped = 
  wxDefaultPosition


type 
  WxRichTextBordersPage* {.importcpp: "wxRichTextBordersPage", header: wxh.} = object of WxRichTextDialogPage
    mLeftBorderCheckbox* {.importc: "m_leftBorderCheckbox".}: ptr WxCheckBox
    mLeftBorderWidth* {.importc: "m_leftBorderWidth".}: ptr WxTextCtrl
    mLeftBorderWidthUnits* {.importc: "m_leftBorderWidthUnits".}: ptr WxComboBox
    mLeftBorderStyle* {.importc: "m_leftBorderStyle".}: ptr WxComboBox
    mLeftBorderColour* {.importc: "m_leftBorderColour".}: ptr WxRichTextColourSwatchCtrl
    mRightBorderCheckbox* {.importc: "m_rightBorderCheckbox".}: ptr WxCheckBox
    mRightBorderWidth* {.importc: "m_rightBorderWidth".}: ptr WxTextCtrl
    mRightBorderWidthUnits* {.importc: "m_rightBorderWidthUnits".}: ptr WxComboBox
    mRightBorderStyle* {.importc: "m_rightBorderStyle".}: ptr WxComboBox
    mRightBorderColour* {.importc: "m_rightBorderColour".}: ptr WxRichTextColourSwatchCtrl
    mTopBorderCheckbox* {.importc: "m_topBorderCheckbox".}: ptr WxCheckBox
    mTopBorderWidth* {.importc: "m_topBorderWidth".}: ptr WxTextCtrl
    mTopBorderWidthUnits* {.importc: "m_topBorderWidthUnits".}: ptr WxComboBox
    mTopBorderStyle* {.importc: "m_topBorderStyle".}: ptr WxComboBox
    mTopBorderColour* {.importc: "m_topBorderColour".}: ptr WxRichTextColourSwatchCtrl
    mBottomBorderCheckbox* {.importc: "m_bottomBorderCheckbox".}: ptr WxCheckBox
    mBottomBorderWidth* {.importc: "m_bottomBorderWidth".}: ptr WxTextCtrl
    mBottomBorderWidthUnits* {.importc: "m_bottomBorderWidthUnits".}: ptr WxComboBox
    mBottomBorderStyle* {.importc: "m_bottomBorderStyle".}: ptr WxComboBox
    mBottomBorderColour* {.importc: "m_bottomBorderColour".}: ptr WxRichTextColourSwatchCtrl
    mBorderSyncCtrl* {.importc: "m_borderSyncCtrl".}: ptr WxCheckBox
    mLeftOutlineCheckbox* {.importc: "m_leftOutlineCheckbox".}: ptr WxCheckBox
    mLeftOutlineWidth* {.importc: "m_leftOutlineWidth".}: ptr WxTextCtrl
    mLeftOutlineWidthUnits* {.importc: "m_leftOutlineWidthUnits".}: ptr WxComboBox
    mLeftOutlineStyle* {.importc: "m_leftOutlineStyle".}: ptr WxComboBox
    mLeftOutlineColour* {.importc: "m_leftOutlineColour".}: ptr WxRichTextColourSwatchCtrl
    mRightOutlineCheckbox* {.importc: "m_rightOutlineCheckbox".}: ptr WxCheckBox
    mRightOutlineWidth* {.importc: "m_rightOutlineWidth".}: ptr WxTextCtrl
    mRightOutlineWidthUnits* {.importc: "m_rightOutlineWidthUnits".}: ptr WxComboBox
    mRightOutlineStyle* {.importc: "m_rightOutlineStyle".}: ptr WxComboBox
    mRightOutlineColour* {.importc: "m_rightOutlineColour".}: ptr WxRichTextColourSwatchCtrl
    mTopOutlineCheckbox* {.importc: "m_topOutlineCheckbox".}: ptr WxCheckBox
    mTopOutlineWidth* {.importc: "m_topOutlineWidth".}: ptr WxTextCtrl
    mTopOutlineWidthUnits* {.importc: "m_topOutlineWidthUnits".}: ptr WxComboBox
    mTopOutlineStyle* {.importc: "m_topOutlineStyle".}: ptr WxComboBox
    mTopOutlineColour* {.importc: "m_topOutlineColour".}: ptr WxRichTextColourSwatchCtrl
    mBottomOutlineCheckbox* {.importc: "m_bottomOutlineCheckbox".}: ptr WxCheckBox
    mBottomOutlineWidth* {.importc: "m_bottomOutlineWidth".}: ptr WxTextCtrl
    mBottomOutlineWidthUnits* {.importc: "m_bottomOutlineWidthUnits".}: ptr WxComboBox
    mBottomOutlineStyle* {.importc: "m_bottomOutlineStyle".}: ptr WxComboBox
    mBottomOutlineColour* {.importc: "m_bottomOutlineColour".}: ptr WxRichTextColourSwatchCtrl
    mOutlineSyncCtrl* {.importc: "m_outlineSyncCtrl".}: ptr WxCheckBox
    mBorderPreviewCtrl* {.importc: "m_borderPreviewCtrl".}: ptr WxRichTextBorderPreviewCtrl
    mBorderStyles* {.importc: "m_borderStyles".}: WxArrayInt
    mBorderStyleNames* {.importc: "m_borderStyleNames".}: WxArrayString
    mIgnoreUpdates* {.importc: "m_ignoreUpdates".}: bool


proc constructwxRichTextBordersPage*(): WxRichTextBordersPage {.cdecl, 
    constructor, importcpp: "wxRichTextBordersPage(@)", header: wxh.}
proc constructwxRichTextBordersPage*(parent: ptr WxWindow; id: WxWindowID = symbol_Wxrichtextborderspage_Idname; 
    pos: WxPoint = symbol_Wxrichtextborderspage_Position; size: WxSize = symbol_Wxrichtextborderspage_Size; 
    style: clong = symbol_Wxrichtextborderspage_Style): WxRichTextBordersPage {.
    cdecl, constructor, importcpp: "wxRichTextBordersPage(@)", header: wxh.}
proc create*(this: var WxRichTextBordersPage; parent: ptr WxWindow; 
             id: WxWindowID = symbol_Wxrichtextborderspage_Idname; 
             pos: WxPoint = symbol_Wxrichtextborderspage_Position; 
             size: WxSize = symbol_Wxrichtextborderspage_Size; 
             style: clong = symbol_Wxrichtextborderspage_Style): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc destroywxRichTextBordersPage*(this: var WxRichTextBordersPage) {.cdecl, 
    importcpp: "#.~wxRichTextBordersPage()", header: wxh.}
proc init*(this: var WxRichTextBordersPage) {.cdecl, importcpp: "Init", 
    header: wxh.}
proc createControls*(this: var WxRichTextBordersPage) {.cdecl, 
    importcpp: "CreateControls", header: wxh.}
proc getAttributes*(this: var WxRichTextBordersPage): ptr WxRichTextAttr {.
    cdecl, importcpp: "GetAttributes", header: wxh.}
proc transferDataToWindow*(this: var WxRichTextBordersPage): bool {.cdecl, 
    importcpp: "TransferDataToWindow", header: wxh.}
proc transferDataFromWindow*(this: var WxRichTextBordersPage): bool {.cdecl, 
    importcpp: "TransferDataFromWindow", header: wxh.}
proc updateSyncControls*(this: var WxRichTextBordersPage) {.cdecl, 
    importcpp: "UpdateSyncControls", header: wxh.}
proc onCommand*(this: var WxRichTextBordersPage; event: var WxCommandEvent) {.
    cdecl, importcpp: "OnCommand", header: wxh.}
proc fillStyleComboBox*(this: var WxRichTextBordersPage; 
                        styleComboBox: ptr WxComboBox) {.cdecl, 
    importcpp: "FillStyleComboBox", header: wxh.}
proc setBorderValue*(border: var WxTextAttrBorder; 
                     widthValueCtrl: ptr WxTextCtrl; 
                     widthUnitsCtrl: ptr WxComboBox; checkBox: ptr WxCheckBox; 
                     styleCtrl: ptr WxComboBox; 
                     colourCtrl: ptr WxRichTextColourSwatchCtrl; 
                     borderStyles: WxArrayInt) {.cdecl, 
    importcpp: "wxRichTextBordersPage::SetBorderValue(@)", header: wxh.}
proc getBorderValue*(border: var WxTextAttrBorder; 
                     widthValueCtrl: ptr WxTextCtrl; 
                     widthUnitsCtrl: ptr WxComboBox; checkBox: ptr WxCheckBox; 
                     styleCtrl: ptr WxComboBox; 
                     colourCtrl: ptr WxRichTextColourSwatchCtrl; 
                     borderStyles: WxArrayInt) {.cdecl, 
    importcpp: "wxRichTextBordersPage::GetBorderValue(@)", header: wxh.}
proc onRichtextBorderCheckboxClick*(this: var WxRichTextBordersPage; 
                                    event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnRichtextBorderCheckboxClick", header: wxh.}
proc onRichtextBorderLeftValueTextUpdated*(this: var WxRichTextBordersPage; 
    event: var WxCommandEvent) {.cdecl, importcpp: "OnRichtextBorderLeftValueTextUpdated", 
                                 header: wxh.}
proc onRichtextBorderLeftUpdate*(this: var WxRichTextBordersPage; 
                                 event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnRichtextBorderLeftUpdate", header: wxh.}
proc onRichtextBorderLeftUnitsSelected*(this: var WxRichTextBordersPage; 
                                        event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnRichtextBorderLeftUnitsSelected", header: wxh.}
proc onRichtextBorderLeftStyleSelected*(this: var WxRichTextBordersPage; 
                                        event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnRichtextBorderLeftStyleSelected", header: wxh.}
proc onRichtextBorderOtherCheckboxUpdate*(this: var WxRichTextBordersPage; 
    event: var WxUpdateUIEvent) {.cdecl, importcpp: "OnRichtextBorderOtherCheckboxUpdate", 
                                  header: wxh.}
proc onRichtextBorderRightUpdate*(this: var WxRichTextBordersPage; 
                                  event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnRichtextBorderRightUpdate", header: wxh.}
proc onRichtextBorderTopUpdate*(this: var WxRichTextBordersPage; 
                                event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnRichtextBorderTopUpdate", header: wxh.}
proc onRichtextBorderBottomUpdate*(this: var WxRichTextBordersPage; 
                                   event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnRichtextBorderBottomUpdate", header: wxh.}
proc onRichtextBorderSynchronizeClick*(this: var WxRichTextBordersPage; 
                                       event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnRichtextBorderSynchronizeClick", header: wxh.}
proc onRichtextBorderSynchronizeUpdate*(this: var WxRichTextBordersPage; 
                                        event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnRichtextBorderSynchronizeUpdate", header: wxh.}
proc onRichtextOutlineLeftTextUpdated*(this: var WxRichTextBordersPage; 
                                       event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnRichtextOutlineLeftTextUpdated", header: wxh.}
proc onRichtextOutlineLeftUpdate*(this: var WxRichTextBordersPage; 
                                  event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnRichtextOutlineLeftUpdate", header: wxh.}
proc onRichtextOutlineLeftUnitsSelected*(this: var WxRichTextBordersPage; 
    event: var WxCommandEvent) {.cdecl, importcpp: "OnRichtextOutlineLeftUnitsSelected", 
                                 header: wxh.}
proc onRichtextOutlineLeftStyleSelected*(this: var WxRichTextBordersPage; 
    event: var WxCommandEvent) {.cdecl, importcpp: "OnRichtextOutlineLeftStyleSelected", 
                                 header: wxh.}
proc onRichtextOutlineOtherCheckboxUpdate*(this: var WxRichTextBordersPage; 
    event: var WxUpdateUIEvent) {.cdecl, importcpp: "OnRichtextOutlineOtherCheckboxUpdate", 
                                  header: wxh.}
proc onRichtextOutlineRightUpdate*(this: var WxRichTextBordersPage; 
                                   event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnRichtextOutlineRightUpdate", header: wxh.}
proc onRichtextOutlineTopUpdate*(this: var WxRichTextBordersPage; 
                                 event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnRichtextOutlineTopUpdate", header: wxh.}
proc onRichtextOutlineBottomUpdate*(this: var WxRichTextBordersPage; 
                                    event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnRichtextOutlineBottomUpdate", header: wxh.}
proc onRichtextOutlineSynchronizeClick*(this: var WxRichTextBordersPage; 
                                        event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnRichtextOutlineSynchronizeClick", header: wxh.}
proc onRichtextOutlineSynchronizeUpdate*(this: var WxRichTextBordersPage; 
    event: var WxUpdateUIEvent) {.cdecl, importcpp: "OnRichtextOutlineSynchronizeUpdate", 
                                  header: wxh.}
proc getBitmapResource*(this: var WxRichTextBordersPage; name: WxString): WxBitmap {.
    cdecl, importcpp: "GetBitmapResource", header: wxh.}
proc getIconResource*(this: var WxRichTextBordersPage; name: WxString): WxIcon {.
    cdecl, importcpp: "GetIconResource", header: wxh.}
type 
  WxRichTextBorderPreviewCtrl* {.importcpp: "wxRichTextBorderPreviewCtrl", 
                                 header: wxh.} = object of WxWindow
  

proc constructwxRichTextBorderPreviewCtrl*(parent: ptr WxWindow; 
    id: WxWindowID = wxID_ANY; pos: WxPoint = wxDefaultPosition; 
    sz: WxSize = wxDefaultSize; style: clong = 0): WxRichTextBorderPreviewCtrl {.
    cdecl, constructor, importcpp: "wxRichTextBorderPreviewCtrl(@)", header: wxh.}
proc setAttributes*(this: var WxRichTextBorderPreviewCtrl; 
                    attr: ptr WxRichTextAttr) {.cdecl, 
    importcpp: "SetAttributes", header: wxh.}
proc getAttributes*(this: WxRichTextBorderPreviewCtrl): ptr WxRichTextAttr {.
    noSideEffect, cdecl, importcpp: "GetAttributes", header: wxh.}
