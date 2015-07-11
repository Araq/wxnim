




const 
  ID_WXRICHTEXTMARGINSPAGE* = 10750
  ID_RICHTEXT_LEFT_MARGIN_CHECKBOX* = 10751
  ID_RICHTEXT_LEFT_MARGIN* = 10752
  ID_RICHTEXT_LEFT_MARGIN_UNITS* = 10753
  ID_RICHTEXT_RIGHT_MARGIN_CHECKBOX* = 10754
  ID_RICHTEXT_RIGHT_MARGIN* = 10755
  ID_RICHTEXT_RIGHT_MARGIN_UNITS* = 10756
  ID_RICHTEXT_TOP_MARGIN_CHECKBOX* = 10757
  ID_RICHTEXT_TOP_MARGIN* = 10758
  ID_RICHTEXT_TOP_MARGIN_UNITS* = 10759
  ID_RICHTEXT_BOTTOM_MARGIN_CHECKBOX* = 10760
  ID_RICHTEXT_BOTTOM_MARGIN* = 10761
  ID_RICHTEXT_BOTTOM_MARGIN_UNITS* = 10762
  ID_RICHTEXT_LEFT_PADDING_CHECKBOX* = 10763
  ID_RICHTEXT_LEFT_PADDING* = 10764
  ID_RICHTEXT_LEFT_PADDING_UNITS* = 10765
  ID_RICHTEXT_RIGHT_PADDING_CHECKBOX* = 10766
  ID_RICHTEXT_RIGHT_PADDING* = 10767
  ID_RICHTEXT_RIGHT_PADDING_UNITS* = 10768
  ID_RICHTEXT_TOP_PADDING_CHECKBOX* = 10769
  ID_RICHTEXT_TOP_PADDING* = 10770
  ID_RICHTEXT_TOP_PADDING_UNITS* = 10771
  ID_RICHTEXT_BOTTOM_PADDING_CHECKBOX* = 10772
  ID_RICHTEXT_BOTTOM_PADDING* = 10773
  ID_RICHTEXT_BOTTOM_PADDING_UNITS* = 10774


template symbol_Wxrichtextmarginspage_Style*(): expr = 
  wxTAB_TRAVERSAL

template symbol_Wxrichtextmarginspage_Title*(): expr = 
  wxEmptyString

template symbol_Wxrichtextmarginspage_Idname*(): expr = 
  WxWindowID( ID_WXRICHTEXTMARGINSPAGE)

template symbol_Wxrichtextmarginspage_Size*(): expr = 
  constructWxSize(400, 300)

template symbol_Wxrichtextmarginspage_Position*(): expr = 
  wxDefaultPosition


type 
  WxRichTextMarginsPage* {.importcpp: "wxRichTextMarginsPage", header: wxh.} = object of WxRichTextDialogPage
    mLeftMarginCheckbox* {.importc: "m_leftMarginCheckbox".}: ptr WxCheckBox
    mMarginLeft* {.importc: "m_marginLeft".}: ptr WxTextCtrl
    mUnitsMarginLeft* {.importc: "m_unitsMarginLeft".}: ptr WxComboBox
    mRightMarginCheckbox* {.importc: "m_rightMarginCheckbox".}: ptr WxCheckBox
    mMarginRight* {.importc: "m_marginRight".}: ptr WxTextCtrl
    mUnitsMarginRight* {.importc: "m_unitsMarginRight".}: ptr WxComboBox
    mTopMarginCheckbox* {.importc: "m_topMarginCheckbox".}: ptr WxCheckBox
    mMarginTop* {.importc: "m_marginTop".}: ptr WxTextCtrl
    mUnitsMarginTop* {.importc: "m_unitsMarginTop".}: ptr WxComboBox
    mBottomMarginCheckbox* {.importc: "m_bottomMarginCheckbox".}: ptr WxCheckBox
    mMarginBottom* {.importc: "m_marginBottom".}: ptr WxTextCtrl
    mUnitsMarginBottom* {.importc: "m_unitsMarginBottom".}: ptr WxComboBox
    mLeftPaddingCheckbox* {.importc: "m_leftPaddingCheckbox".}: ptr WxCheckBox
    mPaddingLeft* {.importc: "m_paddingLeft".}: ptr WxTextCtrl
    mUnitsPaddingLeft* {.importc: "m_unitsPaddingLeft".}: ptr WxComboBox
    mRightPaddingCheckbox* {.importc: "m_rightPaddingCheckbox".}: ptr WxCheckBox
    mPaddingRight* {.importc: "m_paddingRight".}: ptr WxTextCtrl
    mUnitsPaddingRight* {.importc: "m_unitsPaddingRight".}: ptr WxComboBox
    mTopPaddingCheckbox* {.importc: "m_topPaddingCheckbox".}: ptr WxCheckBox
    mPaddingTop* {.importc: "m_paddingTop".}: ptr WxTextCtrl
    mUnitsPaddingTop* {.importc: "m_unitsPaddingTop".}: ptr WxComboBox
    mBottomPaddingCheckbox* {.importc: "m_bottomPaddingCheckbox".}: ptr WxCheckBox
    mPaddingBottom* {.importc: "m_paddingBottom".}: ptr WxTextCtrl
    mUnitsPaddingBottom* {.importc: "m_unitsPaddingBottom".}: ptr WxComboBox
    mIgnoreUpdates* {.importc: "m_ignoreUpdates".}: bool


proc constructwxRichTextMarginsPage*(): WxRichTextMarginsPage {.cdecl, 
    constructor, importcpp: "wxRichTextMarginsPage(@)", header: wxh.}
proc constructwxRichTextMarginsPage*(parent: ptr WxWindow; id: WxWindowID = symbol_Wxrichtextmarginspage_Idname; 
    pos: WxPoint = symbol_Wxrichtextmarginspage_Position; size: WxSize = symbol_Wxrichtextmarginspage_Size; 
    style: clong = symbol_Wxrichtextmarginspage_Style): WxRichTextMarginsPage {.
    cdecl, constructor, importcpp: "wxRichTextMarginsPage(@)", header: wxh.}
proc create*(this: var WxRichTextMarginsPage; parent: ptr WxWindow; 
             id: WxWindowID = symbol_Wxrichtextmarginspage_Idname; 
             pos: WxPoint = symbol_Wxrichtextmarginspage_Position; 
             size: WxSize = symbol_Wxrichtextmarginspage_Size; 
             style: clong = symbol_Wxrichtextmarginspage_Style): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc destroywxRichTextMarginsPage*(this: var WxRichTextMarginsPage) {.cdecl, 
    importcpp: "#.~wxRichTextMarginsPage()", header: wxh.}
proc init*(this: var WxRichTextMarginsPage) {.cdecl, importcpp: "Init", 
    header: wxh.}
proc createControls*(this: var WxRichTextMarginsPage) {.cdecl, 
    importcpp: "CreateControls", header: wxh.}
proc getAttributes*(this: var WxRichTextMarginsPage): ptr WxRichTextAttr {.
    cdecl, importcpp: "GetAttributes", header: wxh.}
proc transferDataToWindow*(this: var WxRichTextMarginsPage): bool {.cdecl, 
    importcpp: "TransferDataToWindow", header: wxh.}
proc transferDataFromWindow*(this: var WxRichTextMarginsPage): bool {.cdecl, 
    importcpp: "TransferDataFromWindow", header: wxh.}
proc onRichtextLeftMarginUpdate*(this: var WxRichTextMarginsPage; 
                                 event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnRichtextLeftMarginUpdate", header: wxh.}
proc onRichtextRightMarginUpdate*(this: var WxRichTextMarginsPage; 
                                  event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnRichtextRightMarginUpdate", header: wxh.}
proc onRichtextTopMarginUpdate*(this: var WxRichTextMarginsPage; 
                                event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnRichtextTopMarginUpdate", header: wxh.}
proc onRichtextBottomMarginUpdate*(this: var WxRichTextMarginsPage; 
                                   event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnRichtextBottomMarginUpdate", header: wxh.}
proc onRichtextLeftPaddingUpdate*(this: var WxRichTextMarginsPage; 
                                  event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnRichtextLeftPaddingUpdate", header: wxh.}
proc onRichtextRightPaddingUpdate*(this: var WxRichTextMarginsPage; 
                                   event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnRichtextRightPaddingUpdate", header: wxh.}
proc onRichtextTopPaddingUpdate*(this: var WxRichTextMarginsPage; 
                                 event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnRichtextTopPaddingUpdate", header: wxh.}
proc onRichtextBottomPaddingUpdate*(this: var WxRichTextMarginsPage; 
                                    event: var WxUpdateUIEvent) {.cdecl, 
    importcpp: "OnRichtextBottomPaddingUpdate", header: wxh.}
proc getBitmapResource*(this: var WxRichTextMarginsPage; name: WxString): WxBitmap {.
    cdecl, importcpp: "GetBitmapResource", header: wxh.}
proc getIconResource*(this: var WxRichTextMarginsPage; name: WxString): WxIcon {.
    cdecl, importcpp: "GetIconResource", header: wxh.}
