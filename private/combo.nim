


discard "forward decl of wxTextCtrl"
discard "forward decl of wxComboPopup"
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
  WxComboCtrlFeatures* {.importcpp: "wxComboCtrlFeatures", header: wxh.} = object 
  

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
  WxComboCtrlBase* {.importcpp: "wxComboCtrlBase", header: wxh.} = object of WxControl
  

proc constructwxComboCtrlBase*(): WxComboCtrlBase {.cdecl, constructor, 
    importcpp: "wxComboCtrlBase(@)", header: wxh.}
proc create*(this: var WxComboCtrlBase; parent: ptr WxWindow; id: WxWindowID; 
             value: WxString; pos: WxPoint; size: WxSize; style: clong; 
             validator: WxValidator; name: WxString): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc destroywxComboCtrlBase*(this: var WxComboCtrlBase) {.cdecl, 
    importcpp: "#.~wxComboCtrlBase()", header: wxh.}
proc popup*(this: var WxComboCtrlBase) {.cdecl, importcpp: "Popup", header: wxh.}
proc dismiss*(this: var WxComboCtrlBase) {.cdecl, importcpp: "Dismiss", 
    header: wxh.}
proc showPopup*(this: var WxComboCtrlBase) {.cdecl, importcpp: "ShowPopup", 
    header: wxh.}
proc hidePopup*(this: var WxComboCtrlBase; generateEvent: bool = false) {.cdecl, 
    importcpp: "HidePopup", header: wxh.}
proc onButtonClick*(this: var WxComboCtrlBase) {.cdecl, 
    importcpp: "OnButtonClick", header: wxh.}
proc isPopupShown*(this: WxComboCtrlBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsPopupShown", header: wxh.}
proc setPopupControl*(this: var WxComboCtrlBase; popup: ptr WxComboPopup) {.
    cdecl, importcpp: "SetPopupControl", header: wxh.}
proc getPopupControl*(this: var WxComboCtrlBase): ptr WxComboPopup {.cdecl, 
    importcpp: "GetPopupControl", header: wxh.}
proc getPopupWindow*(this: WxComboCtrlBase): ptr WxWindow {.noSideEffect, cdecl, 
    importcpp: "GetPopupWindow", header: wxh.}
proc getTextCtrl*(this: WxComboCtrlBase): ptr WxTextCtrl {.noSideEffect, cdecl, 
    importcpp: "GetTextCtrl", header: wxh.}
proc getButton*(this: WxComboCtrlBase): ptr WxWindow {.noSideEffect, cdecl, 
    importcpp: "GetButton", header: wxh.}
proc enable*(this: var WxComboCtrlBase; enable: bool = true): bool {.cdecl, 
    importcpp: "Enable", header: wxh.}
proc show*(this: var WxComboCtrlBase; show: bool = true): bool {.cdecl, 
    importcpp: "Show", header: wxh.}
proc setFont*(this: var WxComboCtrlBase; font: WxFont): bool {.cdecl, 
    importcpp: "SetFont", header: wxh.}
proc setValue*(this: var WxComboCtrlBase; value: WxString) {.cdecl, 
    importcpp: "SetValue", header: wxh.}
proc changeValue*(this: var WxComboCtrlBase; value: WxString) {.cdecl, 
    importcpp: "ChangeValue", header: wxh.}
proc writeText*(this: var WxComboCtrlBase; text: WxString) {.cdecl, 
    importcpp: "WriteText", header: wxh.}
proc appendText*(this: var WxComboCtrlBase; text: WxString) {.cdecl, 
    importcpp: "AppendText", header: wxh.}
proc getValue*(this: WxComboCtrlBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetValue", header: wxh.}
proc getRange*(this: WxComboCtrlBase; `from`: clong; to: clong): WxString {.
    noSideEffect, cdecl, importcpp: "GetRange", header: wxh.}
proc replace*(this: var WxComboCtrlBase; `from`: clong; to: clong; 
              value: WxString) {.cdecl, importcpp: "Replace", header: wxh.}
proc remove*(this: var WxComboCtrlBase; `from`: clong; to: clong) {.cdecl, 
    importcpp: "Remove", header: wxh.}
proc copy*(this: var WxComboCtrlBase) {.cdecl, importcpp: "Copy", header: wxh.}
proc cut*(this: var WxComboCtrlBase) {.cdecl, importcpp: "Cut", header: wxh.}
proc paste*(this: var WxComboCtrlBase) {.cdecl, importcpp: "Paste", header: wxh.}
proc undo*(this: var WxComboCtrlBase) {.cdecl, importcpp: "Undo", header: wxh.}
proc redo*(this: var WxComboCtrlBase) {.cdecl, importcpp: "Redo", header: wxh.}
proc canUndo*(this: WxComboCtrlBase): bool {.noSideEffect, cdecl, 
    importcpp: "CanUndo", header: wxh.}
proc canRedo*(this: WxComboCtrlBase): bool {.noSideEffect, cdecl, 
    importcpp: "CanRedo", header: wxh.}
proc setInsertionPoint*(this: var WxComboCtrlBase; pos: clong) {.cdecl, 
    importcpp: "SetInsertionPoint", header: wxh.}
proc getInsertionPoint*(this: WxComboCtrlBase): clong {.noSideEffect, cdecl, 
    importcpp: "GetInsertionPoint", header: wxh.}
proc getLastPosition*(this: WxComboCtrlBase): clong {.noSideEffect, cdecl, 
    importcpp: "GetLastPosition", header: wxh.}
proc setSelection*(this: var WxComboCtrlBase; `from`: clong; to: clong) {.cdecl, 
    importcpp: "SetSelection", header: wxh.}
proc getSelection*(this: WxComboCtrlBase; `from`: ptr clong; to: ptr clong) {.
    noSideEffect, cdecl, importcpp: "GetSelection", header: wxh.}
proc isEditable*(this: WxComboCtrlBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsEditable", header: wxh.}
proc setEditable*(this: var WxComboCtrlBase; editable: bool) {.cdecl, 
    importcpp: "SetEditable", header: wxh.}
proc setHint*(this: var WxComboCtrlBase; hint: WxString): bool {.cdecl, 
    importcpp: "SetHint", header: wxh.}
proc getHint*(this: WxComboCtrlBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetHint", header: wxh.}
proc setText*(this: var WxComboCtrlBase; value: WxString) {.cdecl, 
    importcpp: "SetText", header: wxh.}
proc setValueByUser*(this: var WxComboCtrlBase; value: WxString) {.cdecl, 
    importcpp: "SetValueByUser", header: wxh.}
proc setPopupMinWidth*(this: var WxComboCtrlBase; width: cint) {.cdecl, 
    importcpp: "SetPopupMinWidth", header: wxh.}
proc setPopupMaxHeight*(this: var WxComboCtrlBase; height: cint) {.cdecl, 
    importcpp: "SetPopupMaxHeight", header: wxh.}
proc setPopupExtents*(this: var WxComboCtrlBase; extLeft: cint; extRight: cint) {.
    cdecl, importcpp: "SetPopupExtents", header: wxh.}
proc setCustomPaintWidth*(this: var WxComboCtrlBase; width: cint) {.cdecl, 
    importcpp: "SetCustomPaintWidth", header: wxh.}
proc getCustomPaintWidth*(this: WxComboCtrlBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetCustomPaintWidth", header: wxh.}
proc setPopupAnchor*(this: var WxComboCtrlBase; anchorSide: cint) {.cdecl, 
    importcpp: "SetPopupAnchor", header: wxh.}
proc setButtonPosition*(this: var WxComboCtrlBase; width: cint = - 1; 
                        height: cint = - 1; side = wxRIGHT; spacingX: cint = 0) {.
    cdecl, importcpp: "SetButtonPosition", header: wxh.}
proc getButtonSize*(this: var WxComboCtrlBase): WxSize {.cdecl, 
    importcpp: "GetButtonSize", header: wxh.}
proc setButtonBitmaps*(this: var WxComboCtrlBase; bmpNormal: WxBitmap; 
                       pushButtonBg: bool = false; 
                       bmpPressed: WxBitmap = wxNullBitmap; 
                       bmpHover: WxBitmap = wxNullBitmap; 
                       bmpDisabled: WxBitmap = wxNullBitmap) {.cdecl, 
    importcpp: "SetButtonBitmaps", header: wxh.}
proc getTextRect*(this: WxComboCtrlBase): WxRect {.noSideEffect, cdecl, 
    importcpp: "GetTextRect", header: wxh.}
proc useAltPopupWindow*(this: var WxComboCtrlBase; enable: bool = true) {.cdecl, 
    importcpp: "UseAltPopupWindow", header: wxh.}
proc enablePopupAnimation*(this: var WxComboCtrlBase; enable: bool = true) {.
    cdecl, importcpp: "EnablePopupAnimation", header: wxh.}
proc isKeyPopupToggle*(this: WxComboCtrlBase; event: WxKeyEvent): bool {.
    noSideEffect, cdecl, importcpp: "IsKeyPopupToggle", header: wxh.}
proc shouldDrawFocus*(this: WxComboCtrlBase): bool {.noSideEffect, cdecl, 
    importcpp: "ShouldDrawFocus", header: wxh.}
proc getBitmapNormal*(this: WxComboCtrlBase): WxBitmap {.noSideEffect, cdecl, 
    importcpp: "GetBitmapNormal", header: wxh.}
proc getBitmapPressed*(this: WxComboCtrlBase): WxBitmap {.noSideEffect, cdecl, 
    importcpp: "GetBitmapPressed", header: wxh.}
proc getBitmapHover*(this: WxComboCtrlBase): WxBitmap {.noSideEffect, cdecl, 
    importcpp: "GetBitmapHover", header: wxh.}
proc getBitmapDisabled*(this: WxComboCtrlBase): WxBitmap {.noSideEffect, cdecl, 
    importcpp: "GetBitmapDisabled", header: wxh.}
proc setTextCtrlStyle*(this: var WxComboCtrlBase; style: cint) {.cdecl, 
    importcpp: "SetTextCtrlStyle", header: wxh.}
proc getInternalFlags*(this: WxComboCtrlBase): WxUint32 {.noSideEffect, cdecl, 
    importcpp: "GetInternalFlags", header: wxh.}
proc isCreated*(this: WxComboCtrlBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsCreated", header: wxh.}
proc getBackgroundColour*(this: WxComboCtrlBase): WxColour {.noSideEffect, 
    cdecl, importcpp: "GetBackgroundColour", header: wxh.}
proc onPopupDismiss*(this: var WxComboCtrlBase; generateEvent: bool) {.cdecl, 
    importcpp: "OnPopupDismiss", header: wxh.}
const 
  Hidden* = 0
  Animating* = 2
  Visible* = 3

proc isPopupWindowState*(this: WxComboCtrlBase; state: cint): bool {.
    noSideEffect, cdecl, importcpp: "IsPopupWindowState", header: wxh.}
proc getPopupWindowState*(this: WxComboCtrlBase): WxByte {.noSideEffect, cdecl, 
    importcpp: "GetPopupWindowState", header: wxh.}
proc setCtrlMainWnd*(this: var WxComboCtrlBase; wnd: ptr WxWindow) {.cdecl, 
    importcpp: "SetCtrlMainWnd", header: wxh.}
proc getMainWindowOfCompositeControl*(this: var WxComboCtrlBase): ptr WxWindow {.
    cdecl, importcpp: "GetMainWindowOfCompositeControl", header: wxh.}
proc setForegroundColour*(this: var WxComboCtrlBase; colour: WxColour): bool {.
    cdecl, importcpp: "SetForegroundColour", header: wxh.}
proc setBackgroundColour*(this: var WxComboCtrlBase; colour: WxColour): bool {.
    cdecl, importcpp: "SetBackgroundColour", header: wxh.}

const 
  wxCP_IFLAG_CREATED* = 0x00000001

discard "forward decl of wxComboCtrl"
type 
  WxComboPopup* {.importcpp: "wxComboPopup", header: wxh.} = object 
  

proc constructwxComboPopup*(): WxComboPopup {.cdecl, constructor, 
    importcpp: "wxComboPopup(@)", header: wxh.}
proc init*(this: var WxComboPopup) {.cdecl, importcpp: "Init", header: wxh.}
proc destroywxComboPopup*(this: var WxComboPopup) {.cdecl, 
    importcpp: "#.~wxComboPopup()", header: wxh.}
proc create*(this: var WxComboPopup; parent: ptr WxWindow): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc destroyPopup*(this: var WxComboPopup) {.cdecl, importcpp: "DestroyPopup", 
    header: wxh.}
proc getControl*(this: var WxComboPopup): ptr WxWindow {.cdecl, 
    importcpp: "GetControl", header: wxh.}
proc onPopup*(this: var WxComboPopup) {.cdecl, importcpp: "OnPopup", header: wxh.}
proc onDismiss*(this: var WxComboPopup) {.cdecl, importcpp: "OnDismiss", 
    header: wxh.}
proc setStringValue*(this: var WxComboPopup; value: WxString) {.cdecl, 
    importcpp: "SetStringValue", header: wxh.}
proc getStringValue*(this: WxComboPopup): WxString {.noSideEffect, cdecl, 
    importcpp: "GetStringValue", header: wxh.}
proc findItem*(this: var WxComboPopup; item: WxString; 
               trueItem: ptr WxString = nil): bool {.cdecl, 
    importcpp: "FindItem", header: wxh.}
proc onComboKeyEvent*(this: var WxComboPopup; event: var WxKeyEvent) {.cdecl, 
    importcpp: "OnComboKeyEvent", header: wxh.}
proc onComboCharEvent*(this: var WxComboPopup; event: var WxKeyEvent) {.cdecl, 
    importcpp: "OnComboCharEvent", header: wxh.}
proc onComboDoubleClick*(this: var WxComboPopup) {.cdecl, 
    importcpp: "OnComboDoubleClick", header: wxh.}
proc getAdjustedSize*(this: var WxComboPopup; minWidth: cint; prefHeight: cint; 
                      maxHeight: cint): WxSize {.cdecl, 
    importcpp: "GetAdjustedSize", header: wxh.}
proc lazyCreate*(this: var WxComboPopup): bool {.cdecl, importcpp: "LazyCreate", 
    header: wxh.}
proc dismiss*(this: var WxComboPopup) {.cdecl, importcpp: "Dismiss", header: wxh.}
proc isCreated*(this: WxComboPopup): bool {.noSideEffect, cdecl, 
    importcpp: "IsCreated", header: wxh.}
proc getComboCtrl*(this: WxComboPopup): ptr WxComboCtrl {.noSideEffect, cdecl, 
    importcpp: "GetComboCtrl", header: wxh.}
type 
  WxComboCtrl* {.importcpp: "wxComboCtrl", header: wxh.} = object of WxComboCtrlBase
  

proc constructwxComboCtrl*(): WxComboCtrl {.cdecl, constructor, 
    importcpp: "wxComboCtrl(@)", header: wxh.}
proc constructwxComboCtrl*(parent: ptr WxWindow; 
                           id: WxWindowID = WxWindowID(wxID_ANY); 
                           value: WxString = wxEmptyString; 
                           pos: WxPoint = wxDefaultPosition; 
                           size: WxSize = wxDefaultSize; style: clong = 0; 
                           validator: WxValidator = wxDefaultValidator; 
                           name: WxString = constructWxString("combobox")): WxComboCtrl {.
    cdecl, constructor, importcpp: "wxComboCtrl(@)", header: wxh.}
proc create*(this: var WxComboCtrl; parent: ptr WxWindow; 
             id: WxWindowID = WxWindowID(wxID_ANY); 
             value: WxString = wxEmptyString; pos: WxPoint = wxDefaultPosition; 
             size: WxSize = wxDefaultSize; style: clong = 0; 
             validator: WxValidator = wxDefaultValidator; 
             name: WxString = constructWxString("combobox")): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc destroywxComboCtrl*(this: var WxComboCtrl) {.cdecl, 
    importcpp: "#.~wxComboCtrl()", header: wxh.}
proc isKeyPopupToggle*(this: WxComboCtrl; event: WxKeyEvent): bool {.
    noSideEffect, cdecl, importcpp: "IsKeyPopupToggle", header: wxh.}
proc getFeatures*(): cint {.cdecl, importcpp: "wxComboCtrl::GetFeatures(@)", 
                            header: wxh.}
