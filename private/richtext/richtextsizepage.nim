





const 
  ID_WXRICHTEXTSIZEPAGE* = 10700
  ID_RICHTEXT_FLOATING_MODE* = 10701
  ID_RICHTEXT_VERTICAL_ALIGNMENT_CHECKBOX* = 10708
  ID_RICHTEXT_VERTICAL_ALIGNMENT_COMBOBOX* = 10709
  ID_RICHTEXT_WIDTH_CHECKBOX* = 10702
  ID_RICHTEXT_WIDTH* = 10703
  ID_RICHTEXT_UNITS_W* = 10704
  ID_RICHTEXT_HEIGHT_CHECKBOX* = 10705
  ID_RICHTEXT_HEIGHT* = 10706
  ID_RICHTEXT_UNITS_H* = 10707
  ID_RICHTEXT_MIN_WIDTH_CHECKBOX* = 10715
  ID_RICHTEXT_MIN_WIDTH* = 10716
  ID_RICHTEXT_UNITS_MIN_W* = 10717
  ID_RICHTEXT_MIN_HEIGHT_CHECKBOX* = 10718
  ID_RICHTEXT_MIN_HEIGHT* = 10719
  ID_RICHTEXT_UNITS_MIN_H* = 10720
  ID_RICHTEXT_MAX_WIDTH_CHECKBOX* = 10721
  ID_RICHTEXT_MAX_WIDTH* = 10722
  ID_RICHTEXT_UNITS_MAX_W* = 10723
  ID_RICHTEXT_MAX_HEIGHT_CHECKBOX* = 10724
  ID_RICHTEXT_MAX_HEIGHT* = 10725
  ID_RICHTEXT_UNITS_MAX_H* = 10726
  ID_RICHTEXT_POSITION_MODE* = 10735
  ID_RICHTEXT_LEFT_CHECKBOX* = 10710
  ID_RICHTEXT_LEFT* = 10711
  ID_RICHTEXT_LEFT_UNITS* = 10712
  ID_RICHTEXT_TOP_CHECKBOX* = 10710
  ID_RICHTEXT_TOP* = 10728
  ID_RICHTEXT_TOP_UNITS* = 10729
  ID_RICHTEXT_RIGHT_CHECKBOX* = 10727
  ID_RICHTEXT_RIGHT* = 10730
  ID_RICHTEXT_RIGHT_UNITS* = 10731
  ID_RICHTEXT_BOTTOM_CHECKBOX* = 10732
  ID_RICHTEXT_BOTTOM* = 10733
  ID_RICHTEXT_BOTTOM_UNITS* = 10734
  ID_RICHTEXT_PARA_UP* = 10713
  ID_RICHTEXT_PARA_DOWN* = 10714


template symbol_Wxrichtextsizepage_Style*(): expr = 
  wxTAB_TRAVERSAL

template symbol_Wxrichtextsizepage_Title*(): expr = 
  wxEmptyString

template symbol_Wxrichtextsizepage_Idname*(): expr = 
  WxWindowID(ID_WXRICHTEXTSIZEPAGE)

template symbol_Wxrichtextsizepage_Size*(): expr = 
  constructWxSize(400, 300)

template symbol_Wxrichtextsizepage_Position*(): expr = 
  wxDefaultPosition


type 
  WxRichTextSizePage* {.importcpp: "wxRichTextSizePage", header: wxh.} = object of WxRichTextDialogPage
    mParentSizer* {.importc: "m_parentSizer".}: ptr WxBoxSizer
    mFloatingAlignmentSizer* {.importc: "m_floatingAlignmentSizer".}: ptr WxBoxSizer
    mFloatingSizer* {.importc: "m_floatingSizer".}: ptr WxBoxSizer
    mFloat* {.importc: "m_float".}: ptr WxChoice
    mAlignmentSizer* {.importc: "m_alignmentSizer".}: ptr WxBoxSizer
    mVerticalAlignmentCheckbox* {.importc: "m_verticalAlignmentCheckbox".}: ptr WxCheckBox
    mVerticalAlignmentComboBox* {.importc: "m_verticalAlignmentComboBox".}: ptr WxChoice
    mSizeSizer* {.importc: "m_sizeSizer".}: ptr WxFlexGridSizer
    mWidthSizer* {.importc: "m_widthSizer".}: ptr WxBoxSizer
    mWidthCheckbox* {.importc: "m_widthCheckbox".}: ptr WxCheckBox
    mWidthLabel* {.importc: "m_widthLabel".}: ptr WxStaticText
    mWidth* {.importc: "m_width".}: ptr WxTextCtrl
    mUnitsW* {.importc: "m_unitsW".}: ptr WxComboBox
    mHeightSizer* {.importc: "m_heightSizer".}: ptr WxBoxSizer
    mHeightCheckbox* {.importc: "m_heightCheckbox".}: ptr WxCheckBox
    mHeightLabel* {.importc: "m_heightLabel".}: ptr WxStaticText
    mHeight* {.importc: "m_height".}: ptr WxTextCtrl
    mUnitsH* {.importc: "m_unitsH".}: ptr WxComboBox
    mMinWidthCheckbox* {.importc: "m_minWidthCheckbox".}: ptr WxCheckBox
    mMinWidthSizer* {.importc: "m_minWidthSizer".}: ptr WxBoxSizer
    mMinWidth* {.importc: "m_minWidth".}: ptr WxTextCtrl
    mUnitsMinW* {.importc: "m_unitsMinW".}: ptr WxComboBox
    mMinHeightCheckbox* {.importc: "m_minHeightCheckbox".}: ptr WxCheckBox
    mMinHeightSizer* {.importc: "m_minHeightSizer".}: ptr WxBoxSizer
    mMinHeight* {.importc: "m_minHeight".}: ptr WxTextCtrl
    mUnitsMinH* {.importc: "m_unitsMinH".}: ptr WxComboBox
    mMaxWidthCheckbox* {.importc: "m_maxWidthCheckbox".}: ptr WxCheckBox
    mMaxWidthSizer* {.importc: "m_maxWidthSizer".}: ptr WxBoxSizer
    mMaxWidth* {.importc: "m_maxWidth".}: ptr WxTextCtrl
    mUnitsMaxW* {.importc: "m_unitsMaxW".}: ptr WxComboBox
    mMaxHeightCheckbox* {.importc: "m_maxHeightCheckbox".}: ptr WxCheckBox
    mMaxHeightSizer* {.importc: "m_maxHeightSizer".}: ptr WxBoxSizer
    mMaxHeight* {.importc: "m_maxHeight".}: ptr WxTextCtrl
    mUnitsMaxH* {.importc: "m_unitsMaxH".}: ptr WxComboBox
    mPositionControls* {.importc: "m_positionControls".}: ptr WxBoxSizer
    mMoveObjectParentSizer* {.importc: "m_moveObjectParentSizer".}: ptr WxBoxSizer
    mPositionModeSizer* {.importc: "m_positionModeSizer".}: ptr WxBoxSizer
    mPositionModeCtrl* {.importc: "m_positionModeCtrl".}: ptr WxChoice
    mPositionGridSizer* {.importc: "m_positionGridSizer".}: ptr WxFlexGridSizer
    mLeftSizer* {.importc: "m_leftSizer".}: ptr WxBoxSizer
    mPositionLeftCheckbox* {.importc: "m_positionLeftCheckbox".}: ptr WxCheckBox
    mLeftLabel* {.importc: "m_leftLabel".}: ptr WxStaticText
    mLeft* {.importc: "m_left".}: ptr WxTextCtrl
    mUnitsLeft* {.importc: "m_unitsLeft".}: ptr WxComboBox
    mTopSizer* {.importc: "m_topSizer".}: ptr WxBoxSizer
    mPositionTopCheckbox* {.importc: "m_positionTopCheckbox".}: ptr WxCheckBox
    mTopLabel* {.importc: "m_topLabel".}: ptr WxStaticText
    mTop* {.importc: "m_top".}: ptr WxTextCtrl
    mUnitsTop* {.importc: "m_unitsTop".}: ptr WxComboBox
    mRightSizer* {.importc: "m_rightSizer".}: ptr WxBoxSizer
    mPositionRightCheckbox* {.importc: "m_positionRightCheckbox".}: ptr WxCheckBox
    mRightLabel* {.importc: "m_rightLabel".}: ptr WxStaticText
    mRightPositionSizer* {.importc: "m_rightPositionSizer".}: ptr WxBoxSizer
    mRight* {.importc: "m_right".}: ptr WxTextCtrl
    mUnitsRight* {.importc: "m_unitsRight".}: ptr WxComboBox
    mBottomSizer* {.importc: "m_bottomSizer".}: ptr WxBoxSizer
    mPositionBottomCheckbox* {.importc: "m_positionBottomCheckbox".}: ptr WxCheckBox
    mBottomLabel* {.importc: "m_bottomLabel".}: ptr WxStaticText
    mBottomPositionSizer* {.importc: "m_bottomPositionSizer".}: ptr WxBoxSizer
    mBottom* {.importc: "m_bottom".}: ptr WxTextCtrl
    mUnitsBottom* {.importc: "m_unitsBottom".}: ptr WxComboBox
    mMoveObjectSizer* {.importc: "m_moveObjectSizer".}: ptr WxBoxSizer
    mPositionMode* {.importc: "m_positionMode".}: cint


proc constructwxRichTextSizePage*(): WxRichTextSizePage {.cdecl, constructor, 
    importcpp: "wxRichTextSizePage(@)", header: wxh.}
proc constructwxRichTextSizePage*(parent: ptr WxWindow; id: WxWindowID = symbol_Wxrichtextsizepage_Idname; 
    pos: WxPoint = symbol_Wxrichtextsizepage_Position; size: WxSize = symbol_Wxrichtextsizepage_Size; 
    style: clong = symbol_Wxrichtextsizepage_Style): WxRichTextSizePage {.cdecl, 
    constructor, importcpp: "wxRichTextSizePage(@)", header: wxh.}
proc create*(this: var WxRichTextSizePage; parent: ptr WxWindow; 
             id: WxWindowID = symbol_Wxrichtextsizepage_Idname; 
             pos: WxPoint = symbol_Wxrichtextsizepage_Position; 
             size: WxSize = symbol_Wxrichtextsizepage_Size; 
             style: clong = symbol_Wxrichtextsizepage_Style): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc destroywxRichTextSizePage*(this: var WxRichTextSizePage) {.cdecl, 
    importcpp: "#.~wxRichTextSizePage()", header: wxh.}
proc init*(this: var WxRichTextSizePage) {.cdecl, importcpp: "Init", header: wxh.}
proc createControls*(this: var WxRichTextSizePage) {.cdecl, 
    importcpp: "CreateControls", header: wxh.}
proc getAttributes*(this: var WxRichTextSizePage): ptr WxRichTextAttr {.cdecl, 
    importcpp: "GetAttributes", header: wxh.}
proc transferDataToWindow*(this: var WxRichTextSizePage): bool {.cdecl, 
    importcpp: "TransferDataToWindow", header: wxh.}
proc transferDataFromWindow*(this: var WxRichTextSizePage): bool {.cdecl, 
    importcpp: "TransferDataFromWindow", header: wxh.}
proc showPositionControls*(show: bool) {.cdecl, 
    importcpp: "wxRichTextSizePage::ShowPositionControls(@)", header: wxh.}
proc showMinMaxSizeControls*(show: bool) {.cdecl, 
    importcpp: "wxRichTextSizePage::ShowMinMaxSizeControls(@)", header: wxh.}
proc showPositionModeControls*(show: bool) {.cdecl, 
    importcpp: "wxRichTextSizePage::ShowPositionModeControls(@)", header: wxh.}
proc showRightBottomPositionControls*(show: bool) {.cdecl, 
    importcpp: "wxRichTextSizePage::ShowRightBottomPositionControls(@)", 
    header: wxh.}
proc showFloatingAndAlignmentControls*(show: bool) {.cdecl, 
    importcpp: "wxRichTextSizePage::ShowFloatingAndAlignmentControls(@)", 
    header: wxh.}
proc showFloatingControls*(show: bool) {.cdecl, 
    importcpp: "wxRichTextSizePage::ShowFloatingControls(@)", header: wxh.}
proc showAlignmentControls*(show: bool) {.cdecl, 
    importcpp: "wxRichTextSizePage::ShowAlignmentControls(@)", header: wxh.}
proc enablePositionAndSizeUnits*(enable: bool) {.cdecl, 
    importcpp: "wxRichTextSizePage::EnablePositionAndSizeUnits(@)", header: wxh.}
proc enablePositionAndSizeCheckboxes*(enable: bool) {.cdecl, 
    importcpp: "wxRichTextSizePage::EnablePositionAndSizeCheckboxes(@)", 
    header: wxh.}
proc onRichtextVerticalAlignmentComboboxUpdate*(this: var WxRichTextSizePage; 
    event: var WxUpdateUIEvent) {.cdecl, importcpp: "OnRichtextVerticalAlignmentComboboxUpdate", 
                                  header: wxh.}
proc onRichtextWidthUpdate*(this: var WxRichTextSizePage; 
                            event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnRichtextWidthUpdate", header: wxh.}
proc onRichtextWidthUnitsUpdate*(this: var WxRichTextSizePage; 
                                 event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnRichtextWidthUnitsUpdate", header: wxh.}
proc onRichtextHeightUpdate*(this: var WxRichTextSizePage; 
                             event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnRichtextHeightUpdate", header: wxh.}
proc onRichtextHeightUnitsUpdate*(this: var WxRichTextSizePage; 
                                  event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnRichtextHeightUnitsUpdate", header: wxh.}
proc onRichtextMinWidthUpdate*(this: var WxRichTextSizePage; 
                               event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnRichtextMinWidthUpdate", header: wxh.}
proc onRichtextMinHeightUpdate*(this: var WxRichTextSizePage; 
                                event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnRichtextMinHeightUpdate", header: wxh.}
proc onRichtextMaxWidthUpdate*(this: var WxRichTextSizePage; 
                               event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnRichtextMaxWidthUpdate", header: wxh.}
proc onRichtextMaxHeightUpdate*(this: var WxRichTextSizePage; 
                                event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnRichtextMaxHeightUpdate", header: wxh.}
proc onRichtextLeftUpdate*(this: var WxRichTextSizePage; 
                           event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnRichtextLeftUpdate", header: wxh.}
proc onRichtextLeftUnitsUpdate*(this: var WxRichTextSizePage; 
                                event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnRichtextLeftUnitsUpdate", header: wxh.}
proc onRichtextTopUpdate*(this: var WxRichTextSizePage; 
                          event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnRichtextTopUpdate", header: wxh.}
proc onRichtextTopUnitsUpdate*(this: var WxRichTextSizePage; 
                               event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnRichtextTopUnitsUpdate", header: wxh.}
proc onRichtextRightUpdate*(this: var WxRichTextSizePage; 
                            event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnRichtextRightUpdate", header: wxh.}
proc onRichtextRightUnitsUpdate*(this: var WxRichTextSizePage; 
                                 event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnRichtextRightUnitsUpdate", header: wxh.}
proc onRichtextBottomUpdate*(this: var WxRichTextSizePage; 
                             event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnRichtextBottomUpdate", header: wxh.}
proc onRichtextBottomUnitsUpdate*(this: var WxRichTextSizePage; 
                                  event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnRichtextBottomUnitsUpdate", header: wxh.}
proc onRichtextParaUpClick*(this: var WxRichTextSizePage; 
                            event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnRichtextParaUpClick", header: wxh.}
proc onRichtextParaDownClick*(this: var WxRichTextSizePage; 
                              event: var WxCommandEvent) {.cdecl, 
    importcpp: "OnRichtextParaDownClick", header: wxh.}
proc getPositionMode*(this: WxRichTextSizePage): cint {.noSideEffect, cdecl, 
    importcpp: "GetPositionMode", header: wxh.}
proc setPositionMode*(this: var WxRichTextSizePage; value: cint) {.cdecl, 
    importcpp: "SetPositionMode", header: wxh.}
proc getBitmapResource*(this: var WxRichTextSizePage; name: WxString): WxBitmap {.
    cdecl, importcpp: "GetBitmapResource", header: wxh.}
proc getIconResource*(this: var WxRichTextSizePage; name: WxString): WxIcon {.
    cdecl, importcpp: "GetIconResource", header: wxh.}
