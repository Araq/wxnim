


discard "forward decl of wxTextCtrl"
discard "forward decl of wxComboPopup"
var wxNullBitmap* {.importcpp: "wxNullBitmap", header: "wx.h".}: WxBitmap


const 
  wxCC_SPECIAL_DCLICK* = 0x00000100
  wxCC_STD_BUTTON* = 0x00000200


const 
  wxCC_BUTTON_OUTSIDE_BORDER* = 0x00000001
  wxCC_POPUP_ON_MOUSE_UP* = 0x00000002
  wxCC_NO_TEXT_AUTO_SELECT* = 0x00000004
  wxCC_BUTTON_STAYS_DOWN* = 0x00000008
  wxCC_FULL_BUTTON* = 0x00000010
  wxCC_BUTTON_COVERS_BORDER* = 0x00000020
  wxCC_IFLAG_CREATED* = 0x00000100
  wxCC_IFLAG_BUTTON_OUTSIDE* = 0x00000200
  wxCC_IFLAG_LEFT_MARGIN_SET* = 0x00000400
  wxCC_IFLAG_PARENT_TAB_TRAVERSAL* = 0x00000800
  wxCC_IFLAG_USE_ALT_POPUP* = 0x00001000
  wxCC_IFLAG_DISABLE_POPUP_ANIM* = 0x00002000
  wxCC_IFLAG_HAS_NONSTANDARD_BUTTON* = 0x00004000


const 
  wxCC_MF_ON_BUTTON* = 0x00000001
  wxCC_MF_ON_CLICK_AREA* = 0x00000002


type 
  WxComboCtrlFeatures* {.importcpp: "wxComboCtrlFeatures", header: "wx.h".} = object 
  

const 
  MovableButton* = 0x00000001
  BitmapButton* = 0x00000002
  ButtonSpacing* = 0x00000004
  TextIndent* = 0x00000008
  PaintControl* = 0x00000010
  PaintWritable* = 0x00000020
  Borderless* = 0x00000040
  All* = 1 or 2 or 4 or 8 or 0x00000010 or 0x00000020 or 0x00000040

type 
  WxComboCtrlBase* {.importcpp: "wxComboCtrlBase", header: "wx.h".} = object of WxControl
    mValueString* {.importc: "m_valueString".}: WxString
    mHintText* {.importc: "m_hintText".}: WxString
    mText* {.importc: "m_text".}: ptr WxTextCtrl
    mBtn* {.importc: "m_btn".}: ptr WxWindow
    mWinPopup* {.importc: "m_winPopup".}: ptr WxWindow
    mPopup* {.importc: "m_popup".}: ptr WxWindow
    mPopupInterface* {.importc: "m_popupInterface".}: ptr WxComboPopup
    mTextEvtHandler* {.importc: "m_textEvtHandler".}: ptr WxEvtHandler
    mToplevEvtHandler* {.importc: "m_toplevEvtHandler".}: ptr WxEvtHandler
    mPopupEvtHandler* {.importc: "m_popupEvtHandler".}: ptr WxEvtHandler
    mPopupWinEvtHandler* {.importc: "m_popupWinEvtHandler".}: ptr WxEvtHandler
    mMainCtrlWnd* {.importc: "m_mainCtrlWnd".}: ptr WxWindow
    mTimeCanAcceptClick* {.importc: "m_timeCanAcceptClick".}: int64
    mExtLeft* {.importc: "m_extLeft".}: WxCoord
    mExtRight* {.importc: "m_extRight".}: WxCoord
    mWidthMinPopup* {.importc: "m_widthMinPopup".}: WxCoord
    mHeightPopup* {.importc: "m_heightPopup".}: WxCoord
    mWidthCustomPaint* {.importc: "m_widthCustomPaint".}: WxCoord
    mMarginLeft* {.importc: "m_marginLeft".}: WxCoord
    mAnchorSide* {.importc: "m_anchorSide".}: cint
    mWidthCustomBorder* {.importc: "m_widthCustomBorder".}: WxCoord
    mTcArea* {.importc: "m_tcArea".}: WxRect
    mBtnArea* {.importc: "m_btnArea".}: WxRect
    mTcBgCol* {.importc: "m_tcBgCol".}: WxColour
    mBtnState* {.importc: "m_btnState".}: cint
    mBtnWid* {.importc: "m_btnWid".}: cint
    mBtnHei* {.importc: "m_btnHei".}: cint
    mBtnSide* {.importc: "m_btnSide".}: cint
    mBtnSpacingX* {.importc: "m_btnSpacingX".}: cint
    mBtnWidDefault* {.importc: "m_btnWidDefault".}: cint
    mBmpNormal* {.importc: "m_bmpNormal".}: WxBitmap
    mBmpPressed* {.importc: "m_bmpPressed".}: WxBitmap
    mBmpHover* {.importc: "m_bmpHover".}: WxBitmap
    mBmpDisabled* {.importc: "m_bmpDisabled".}: WxBitmap
    mBtnSize* {.importc: "m_btnSize".}: WxSize
    mIFlags* {.importc: "m_iFlags".}: WxUint32
    mTextCtrlStyle* {.importc: "m_textCtrlStyle".}: cint
    mBlankButtonBg* {.importc: "m_blankButtonBg".}: bool
    mPopupWinState* {.importc: "m_popupWinState".}: WxByte
    mResetFocus* {.importc: "m_resetFocus".}: bool
    mHasTcBgCol* {.importc: "m_hasTcBgCol".}: bool
    mIgnoreEvtText* {.importc: "m_ignoreEvtText".}: WxByte
    mPopupWinType* {.importc: "m_popupWinType".}: WxByte


proc constructwxComboCtrlBase*(): WxComboCtrlBase {.cdecl, constructor, 
    importcpp: "wxComboCtrlBase(@)", header: "wx.h".}
proc create*(this: var WxComboCtrlBase; parent: ptr WxWindow; id: WxWindowID; 
             value: WxString; pos: WxPoint; size: WxSize; style: clong; 
             validator: WxValidator; name: WxString): bool {.cdecl, 
    importcpp: "Create", header: "wx.h".}
proc destroywxComboCtrlBase*(this: var WxComboCtrlBase) {.cdecl, 
    importcpp: "#.~wxComboCtrlBase()", header: "wx.h".}
proc popup*(this: var WxComboCtrlBase) {.cdecl, importcpp: "Popup", 
    header: "wx.h".}
proc dismiss*(this: var WxComboCtrlBase) {.cdecl, importcpp: "Dismiss", 
    header: "wx.h".}
proc showPopup*(this: var WxComboCtrlBase) {.cdecl, importcpp: "ShowPopup", 
    header: "wx.h".}
proc hidePopup*(this: var WxComboCtrlBase; generateEvent: bool = false) {.cdecl, 
    importcpp: "HidePopup", header: "wx.h".}
proc onButtonClick*(this: var WxComboCtrlBase) {.cdecl, 
    importcpp: "OnButtonClick", header: "wx.h".}
proc isPopupShown*(this: WxComboCtrlBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsPopupShown", header: "wx.h".}
proc setPopupControl*(this: var WxComboCtrlBase; popup: ptr WxComboPopup) {.
    cdecl, importcpp: "SetPopupControl", header: "wx.h".}
proc getPopupControl*(this: var WxComboCtrlBase): ptr WxComboPopup {.cdecl, 
    importcpp: "GetPopupControl", header: "wx.h".}
proc getPopupWindow*(this: WxComboCtrlBase): ptr WxWindow {.noSideEffect, cdecl, 
    importcpp: "GetPopupWindow", header: "wx.h".}
proc getTextCtrl*(this: WxComboCtrlBase): ptr WxTextCtrl {.noSideEffect, cdecl, 
    importcpp: "GetTextCtrl", header: "wx.h".}
proc getButton*(this: WxComboCtrlBase): ptr WxWindow {.noSideEffect, cdecl, 
    importcpp: "GetButton", header: "wx.h".}
proc enable*(this: var WxComboCtrlBase; enable: bool = true): bool {.cdecl, 
    importcpp: "Enable", header: "wx.h".}
proc show*(this: var WxComboCtrlBase; show: bool = true): bool {.cdecl, 
    importcpp: "Show", header: "wx.h".}
proc setFont*(this: var WxComboCtrlBase; font: WxFont): bool {.cdecl, 
    importcpp: "SetFont", header: "wx.h".}
proc setValue*(this: var WxComboCtrlBase; value: WxString) {.cdecl, 
    importcpp: "SetValue", header: "wx.h".}
proc changeValue*(this: var WxComboCtrlBase; value: WxString) {.cdecl, 
    importcpp: "ChangeValue", header: "wx.h".}
proc writeText*(this: var WxComboCtrlBase; text: WxString) {.cdecl, 
    importcpp: "WriteText", header: "wx.h".}
proc appendText*(this: var WxComboCtrlBase; text: WxString) {.cdecl, 
    importcpp: "AppendText", header: "wx.h".}
proc getValue*(this: WxComboCtrlBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetValue", header: "wx.h".}
proc getRange*(this: WxComboCtrlBase; `from`: clong; to: clong): WxString {.
    noSideEffect, cdecl, importcpp: "GetRange", header: "wx.h".}
proc replace*(this: var WxComboCtrlBase; `from`: clong; to: clong; 
              value: WxString) {.cdecl, importcpp: "Replace", header: "wx.h".}
proc remove*(this: var WxComboCtrlBase; `from`: clong; to: clong) {.cdecl, 
    importcpp: "Remove", header: "wx.h".}
proc copy*(this: var WxComboCtrlBase) {.cdecl, importcpp: "Copy", header: "wx.h".}
proc cut*(this: var WxComboCtrlBase) {.cdecl, importcpp: "Cut", header: "wx.h".}
proc paste*(this: var WxComboCtrlBase) {.cdecl, importcpp: "Paste", 
    header: "wx.h".}
proc undo*(this: var WxComboCtrlBase) {.cdecl, importcpp: "Undo", header: "wx.h".}
proc redo*(this: var WxComboCtrlBase) {.cdecl, importcpp: "Redo", header: "wx.h".}
proc canUndo*(this: WxComboCtrlBase): bool {.noSideEffect, cdecl, 
    importcpp: "CanUndo", header: "wx.h".}
proc canRedo*(this: WxComboCtrlBase): bool {.noSideEffect, cdecl, 
    importcpp: "CanRedo", header: "wx.h".}
proc setInsertionPoint*(this: var WxComboCtrlBase; pos: clong) {.cdecl, 
    importcpp: "SetInsertionPoint", header: "wx.h".}
proc getInsertionPoint*(this: WxComboCtrlBase): clong {.noSideEffect, cdecl, 
    importcpp: "GetInsertionPoint", header: "wx.h".}
proc getLastPosition*(this: WxComboCtrlBase): clong {.noSideEffect, cdecl, 
    importcpp: "GetLastPosition", header: "wx.h".}
proc setSelection*(this: var WxComboCtrlBase; `from`: clong; to: clong) {.cdecl, 
    importcpp: "SetSelection", header: "wx.h".}
proc getSelection*(this: WxComboCtrlBase; `from`: ptr clong; to: ptr clong) {.
    noSideEffect, cdecl, importcpp: "GetSelection", header: "wx.h".}
proc isEditable*(this: WxComboCtrlBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsEditable", header: "wx.h".}
proc setEditable*(this: var WxComboCtrlBase; editable: bool) {.cdecl, 
    importcpp: "SetEditable", header: "wx.h".}
proc setHint*(this: var WxComboCtrlBase; hint: WxString): bool {.cdecl, 
    importcpp: "SetHint", header: "wx.h".}
proc getHint*(this: WxComboCtrlBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetHint", header: "wx.h".}
proc setText*(this: var WxComboCtrlBase; value: WxString) {.cdecl, 
    importcpp: "SetText", header: "wx.h".}
proc setValueByUser*(this: var WxComboCtrlBase; value: WxString) {.cdecl, 
    importcpp: "SetValueByUser", header: "wx.h".}
proc setPopupMinWidth*(this: var WxComboCtrlBase; width: cint) {.cdecl, 
    importcpp: "SetPopupMinWidth", header: "wx.h".}
proc setPopupMaxHeight*(this: var WxComboCtrlBase; height: cint) {.cdecl, 
    importcpp: "SetPopupMaxHeight", header: "wx.h".}
proc setPopupExtents*(this: var WxComboCtrlBase; extLeft: cint; extRight: cint) {.
    cdecl, importcpp: "SetPopupExtents", header: "wx.h".}
proc setCustomPaintWidth*(this: var WxComboCtrlBase; width: cint) {.cdecl, 
    importcpp: "SetCustomPaintWidth", header: "wx.h".}
proc getCustomPaintWidth*(this: WxComboCtrlBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetCustomPaintWidth", header: "wx.h".}
proc setPopupAnchor*(this: var WxComboCtrlBase; anchorSide: cint) {.cdecl, 
    importcpp: "SetPopupAnchor", header: "wx.h".}
proc setButtonPosition*(this: var WxComboCtrlBase; width: cint = - 1; 
                        height: cint = - 1; side: auto = wxRIGHT; 
                        spacingX: cint = 0) {.cdecl, 
    importcpp: "SetButtonPosition", header: "wx.h".}
proc getButtonSize*(this: var WxComboCtrlBase): WxSize {.cdecl, 
    importcpp: "GetButtonSize", header: "wx.h".}
proc setButtonBitmaps*(this: var WxComboCtrlBase; bmpNormal: WxBitmap; 
                       pushButtonBg: bool = false; 
                       bmpPressed: WxBitmap = wxNullBitmap; 
                       bmpHover: WxBitmap = wxNullBitmap; 
                       bmpDisabled: WxBitmap = wxNullBitmap) {.cdecl, 
    importcpp: "SetButtonBitmaps", header: "wx.h".}
proc getTextRect*(this: WxComboCtrlBase): WxRect {.noSideEffect, cdecl, 
    importcpp: "GetTextRect", header: "wx.h".}
proc useAltPopupWindow*(this: var WxComboCtrlBase; enable: bool = true) {.cdecl, 
    importcpp: "UseAltPopupWindow", header: "wx.h".}
proc enablePopupAnimation*(this: var WxComboCtrlBase; enable: bool = true) {.
    cdecl, importcpp: "EnablePopupAnimation", header: "wx.h".}
proc isKeyPopupToggle*(this: WxComboCtrlBase; event: WxKeyEvent): bool {.
    noSideEffect, cdecl, importcpp: "IsKeyPopupToggle", header: "wx.h".}
proc shouldDrawFocus*(this: WxComboCtrlBase): bool {.noSideEffect, cdecl, 
    importcpp: "ShouldDrawFocus", header: "wx.h".}
proc getBitmapNormal*(this: WxComboCtrlBase): WxBitmap {.noSideEffect, cdecl, 
    importcpp: "GetBitmapNormal", header: "wx.h".}
proc getBitmapPressed*(this: WxComboCtrlBase): WxBitmap {.noSideEffect, cdecl, 
    importcpp: "GetBitmapPressed", header: "wx.h".}
proc getBitmapHover*(this: WxComboCtrlBase): WxBitmap {.noSideEffect, cdecl, 
    importcpp: "GetBitmapHover", header: "wx.h".}
proc getBitmapDisabled*(this: WxComboCtrlBase): WxBitmap {.noSideEffect, cdecl, 
    importcpp: "GetBitmapDisabled", header: "wx.h".}
proc setTextCtrlStyle*(this: var WxComboCtrlBase; style: cint) {.cdecl, 
    importcpp: "SetTextCtrlStyle", header: "wx.h".}
proc getInternalFlags*(this: WxComboCtrlBase): WxUint32 {.noSideEffect, cdecl, 
    importcpp: "GetInternalFlags", header: "wx.h".}
proc isCreated*(this: WxComboCtrlBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsCreated", header: "wx.h".}
proc getBackgroundColour*(this: WxComboCtrlBase): WxColour {.noSideEffect, 
    cdecl, importcpp: "GetBackgroundColour", header: "wx.h".}
proc onPopupDismiss*(this: var WxComboCtrlBase; generateEvent: bool) {.cdecl, 
    importcpp: "OnPopupDismiss", header: "wx.h".}
const 
  Hidden* = 0
  Animating* = 2
  Visible* = 3

proc isPopupWindowState*(this: WxComboCtrlBase; state: cint): bool {.
    noSideEffect, cdecl, importcpp: "IsPopupWindowState", header: "wx.h".}
proc getPopupWindowState*(this: WxComboCtrlBase): WxByte {.noSideEffect, cdecl, 
    importcpp: "GetPopupWindowState", header: "wx.h".}
proc setCtrlMainWnd*(this: var WxComboCtrlBase; wnd: ptr WxWindow) {.cdecl, 
    importcpp: "SetCtrlMainWnd", header: "wx.h".}
proc getMainWindowOfCompositeControl*(this: var WxComboCtrlBase): ptr WxWindow {.
    cdecl, importcpp: "GetMainWindowOfCompositeControl", header: "wx.h".}
proc setForegroundColour*(this: var WxComboCtrlBase; colour: WxColour): bool {.
    cdecl, importcpp: "SetForegroundColour", header: "wx.h".}
proc setBackgroundColour*(this: var WxComboCtrlBase; colour: WxColour): bool {.
    cdecl, importcpp: "SetBackgroundColour", header: "wx.h".}

const 
  wxCP_IFLAG_CREATED* = 0x00000001

discard "forward decl of wxComboCtrl"
type 
  WxComboPopup* {.importcpp: "wxComboPopup", header: "wx.h".} = object 
    mCombo* {.importc: "m_combo".}: ptr WxComboCtrlBase
    mIFlags* {.importc: "m_iFlags".}: WxUint32


proc constructwxComboPopup*(): WxComboPopup {.cdecl, constructor, 
    importcpp: "wxComboPopup(@)", header: "wx.h".}
proc init*(this: var WxComboPopup) {.cdecl, importcpp: "Init", header: "wx.h".}
proc destroywxComboPopup*(this: var WxComboPopup) {.cdecl, 
    importcpp: "#.~wxComboPopup()", header: "wx.h".}
proc create*(this: var WxComboPopup; parent: ptr WxWindow): bool {.cdecl, 
    importcpp: "Create", header: "wx.h".}
proc destroyPopup*(this: var WxComboPopup) {.cdecl, importcpp: "DestroyPopup", 
    header: "wx.h".}
proc getControl*(this: var WxComboPopup): ptr WxWindow {.cdecl, 
    importcpp: "GetControl", header: "wx.h".}
proc onPopup*(this: var WxComboPopup) {.cdecl, importcpp: "OnPopup", 
                                        header: "wx.h".}
proc onDismiss*(this: var WxComboPopup) {.cdecl, importcpp: "OnDismiss", 
    header: "wx.h".}
proc setStringValue*(this: var WxComboPopup; value: WxString) {.cdecl, 
    importcpp: "SetStringValue", header: "wx.h".}
proc getStringValue*(this: WxComboPopup): WxString {.noSideEffect, cdecl, 
    importcpp: "GetStringValue", header: "wx.h".}
proc findItem*(this: var WxComboPopup; item: WxString; 
               trueItem: ptr WxString = nil): bool {.cdecl, 
    importcpp: "FindItem", header: "wx.h".}
proc onComboKeyEvent*(this: var WxComboPopup; event: var WxKeyEvent) {.cdecl, 
    importcpp: "OnComboKeyEvent", header: "wx.h".}
proc onComboCharEvent*(this: var WxComboPopup; event: var WxKeyEvent) {.cdecl, 
    importcpp: "OnComboCharEvent", header: "wx.h".}
proc onComboDoubleClick*(this: var WxComboPopup) {.cdecl, 
    importcpp: "OnComboDoubleClick", header: "wx.h".}
proc getAdjustedSize*(this: var WxComboPopup; minWidth: cint; prefHeight: cint; 
                      maxHeight: cint): WxSize {.cdecl, 
    importcpp: "GetAdjustedSize", header: "wx.h".}
proc lazyCreate*(this: var WxComboPopup): bool {.cdecl, importcpp: "LazyCreate", 
    header: "wx.h".}
proc dismiss*(this: var WxComboPopup) {.cdecl, importcpp: "Dismiss", 
                                        header: "wx.h".}
proc isCreated*(this: WxComboPopup): bool {.noSideEffect, cdecl, 
    importcpp: "IsCreated", header: "wx.h".}
proc getComboCtrl*(this: WxComboPopup): ptr WxComboCtrl {.noSideEffect, cdecl, 
    importcpp: "GetComboCtrl", header: "wx.h".}
type 
  WxComboCtrl* {.importcpp: "wxComboCtrl", header: "wx.h".} = object of WxComboCtrlBase
  

proc constructwxComboCtrl*(): WxComboCtrl {.cdecl, constructor, 
    importcpp: "wxComboCtrl(@)", header: "wx.h".}
proc constructwxComboCtrl*(parent: ptr WxWindow; 
                           id: WxWindowID = WxWindowID(wxID_ANY); 
                           value: WxString = wxEmptyString; 
                           pos: WxPoint = wxDefaultPosition; 
                           size: WxSize = wxDefaultSize; style: clong = 0; 
                           validator: WxValidator = wxDefaultValidator; 
                           name: WxString = constructWxString("combobox")): WxComboCtrl {.
    cdecl, constructor, importcpp: "wxComboCtrl(@)", header: "wx.h".}
proc create*(this: var WxComboCtrl; parent: ptr WxWindow; 
             id: WxWindowID = WxWindowID(wxID_ANY); 
             value: WxString = wxEmptyString; pos: WxPoint = wxDefaultPosition; 
             size: WxSize = wxDefaultSize; style: clong = 0; 
             validator: WxValidator = wxDefaultValidator; 
             name: WxString = constructWxString("combobox")): bool {.cdecl, 
    importcpp: "Create", header: "wx.h".}
proc destroywxComboCtrl*(this: var WxComboCtrl) {.cdecl, 
    importcpp: "#.~wxComboCtrl()", header: "wx.h".}
proc isKeyPopupToggle*(this: WxComboCtrl; event: WxKeyEvent): bool {.
    noSideEffect, cdecl, importcpp: "IsKeyPopupToggle", header: "wx.h".}
proc getFeatures*(): cint {.cdecl, importcpp: "wxComboCtrl::GetFeatures(@)", 
                            header: "wx.h".}
