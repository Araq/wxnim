


discard "forward decl of wxCaret"
discard "forward decl of wxControl"
discard "forward decl of wxCursor"
discard "forward decl of wxDC"
discard "forward decl of wxDropTarget"
discard "forward decl of wxLayoutConstraints"
discard "forward decl of wxSizer"
discard "forward decl of wxToolTip"
discard "forward decl of wxWindowBase"
discard "forward decl of wxWindow"
discard "forward decl of wxScrollHelper"
type 
  WxVisualAttributes* {.importcpp: "wxVisualAttributes", header: "<wx/wx.h>".} = object 
    font* {.importc: "font".}: WxFont
    colFg* {.importc: "colFg".}: WxColour
    colBg* {.importc: "colBg".}: WxColour



type 
  WxWindowVariant* {.size: sizeof(cint), 
                     importcpp: "wxScrollHelper::wxWindowVariant", 
                     header: "<wx/wx.h>".} = enum 
    wxWINDOW_VARIANT_NORMAL, wxWINDOW_VARIANT_SMALL, wxWINDOW_VARIANT_MINI, 
    wxWINDOW_VARIANT_LARGE, wxWINDOW_VARIANT_MAX


const 
  wxWINDOW_DEFAULT_VARIANT* = "window-default-variant"


type 
  WxShowEffect* {.size: sizeof(cint), importcpp: "wxScrollHelper::wxShowEffect", 
                  header: "<wx/wx.h>".} = enum 
    wxSHOW_EFFECT_NONE, wxSHOW_EFFECT_ROLL_TO_LEFT, wxSHOW_EFFECT_ROLL_TO_RIGHT, 
    wxSHOW_EFFECT_ROLL_TO_TOP, wxSHOW_EFFECT_ROLL_TO_BOTTOM, 
    wxSHOW_EFFECT_SLIDE_TO_LEFT, wxSHOW_EFFECT_SLIDE_TO_RIGHT, 
    wxSHOW_EFFECT_SLIDE_TO_TOP, wxSHOW_EFFECT_SLIDE_TO_BOTTOM, 
    wxSHOW_EFFECT_BLEND, wxSHOW_EFFECT_EXPAND, wxSHOW_EFFECT_MAX



const 
  wxSEND_EVENT_POST* = 1


type 
  WxWindowList* = WxList
  WxAccessible* {.importcpp: "wxAccessible", header: "<wx/wx.h>".} = object of WxObject
  
  WxValidator* {.importcpp: "wxValidator", header: "<wx/wx.h>".} = object of WxEvtHandler
  
  WxWindowIDRef* {.importcpp: "wxWindowIDRef", header: "<wx/wx.h>", inheritable.} = object 
  
  WxDropTarget* {.importcpp: "wxDropTarget", header: "<wx/wx.h>", inheritable.} = object 
  
  WxCaret* {.importcpp: "wxCaret", header: "<wx/wx.h>", inheritable.} = object 
  
  WxCursor* {.importcpp: "wxCursor", header: "<wx/wx.h>".} = object of WxBitmap
  
  WxRegion* {.importcpp: "wxRegion", header: "<wx/wx.h>".} = object of WxObject
  
  WxAcceleratorTable* {.importcpp: "wxAcceleratorTable", header: "<wx/wx.h>".} = object of WxObject
  
  WxToolTip* {.importcpp: "wxToolTip", header: "<wx/wx.h>".} = object of WxObject
  
  WxScrollHelper* {.importcpp: "wxScrollHelper", header: "<wx/wx.h>".} = object of WxObject
  
  WxRenderer* {.importcpp: "wxRenderer", header: "<wx/wx.h>".} = object of WxObject
  
  WXWidget* = pointer
  WxWindowBase* {.importcpp: "wxWindowBase", header: "<wx/wx.h>".} = object of WxEvtHandler
  

proc constructwxWindowBase*(): WxWindowBase {.cdecl, constructor, 
    importcpp: "wxWindowBase(@)", header: "<wx/wx.h>".}
proc destroywxWindowBase*(this: var WxWindowBase) {.cdecl, 
    importcpp: "#.~wxWindowBase()", header: "<wx/wx.h>".}
proc close*(this: var WxWindowBase; force: bool = false): bool {.cdecl, 
    importcpp: "Close", header: "<wx/wx.h>".}
proc destroy*(this: var WxWindowBase): bool {.cdecl, importcpp: "Destroy", 
    header: "<wx/wx.h>".}
proc destroyChildren*(this: var WxWindowBase): bool {.cdecl, 
    importcpp: "DestroyChildren", header: "<wx/wx.h>".}
proc isBeingDeleted*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsBeingDeleted", header: "<wx/wx.h>".}
proc setLabel*(this: var WxWindowBase; label: WxString) {.cdecl, 
    importcpp: "SetLabel", header: "<wx/wx.h>".}
proc getLabel*(this: WxWindowBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetLabel", header: "<wx/wx.h>".}
proc setName*(this: var WxWindowBase; name: WxString) {.cdecl, 
    importcpp: "SetName", header: "<wx/wx.h>".}
proc getName*(this: WxWindowBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetName", header: "<wx/wx.h>".}
proc setWindowVariant*(this: var WxWindowBase; variant: WxWindowVariant) {.
    cdecl, importcpp: "SetWindowVariant", header: "<wx/wx.h>".}
proc getWindowVariant*(this: WxWindowBase): WxWindowVariant {.noSideEffect, 
    cdecl, importcpp: "GetWindowVariant", header: "<wx/wx.h>".}
proc getLayoutDirection*(this: WxWindowBase): WxLayoutDirection {.noSideEffect, 
    cdecl, importcpp: "GetLayoutDirection", header: "<wx/wx.h>".}
proc setLayoutDirection*(this: var WxWindowBase; dir: WxLayoutDirection) {.
    cdecl, importcpp: "SetLayoutDirection", header: "<wx/wx.h>".}
proc adjustForLayoutDirection*(this: WxWindowBase; x: WxCoord; width: WxCoord; 
                               widthTotal: WxCoord): WxCoord {.noSideEffect, 
    cdecl, importcpp: "AdjustForLayoutDirection", header: "<wx/wx.h>".}
proc setId*(this: var WxWindowBase; winid: WxWindowID) {.cdecl, 
    importcpp: "SetId", header: "<wx/wx.h>".}
proc getId*(this: WxWindowBase): WxWindowID {.noSideEffect, cdecl, 
    importcpp: "GetId", header: "<wx/wx.h>".}
proc newControlId*(count: cint = 1): WxWindowID {.cdecl, 
    importcpp: "wxWindowBase::NewControlId(@)", header: "<wx/wx.h>".}
proc unreserveControlId*(id: WxWindowID; count: cint = 1) {.cdecl, 
    importcpp: "wxWindowBase::UnreserveControlId(@)", header: "<wx/wx.h>".}
proc setSize*(this: var WxWindowBase; x: cint; y: cint; width: cint; 
              height: cint; sizeFlags: cint = wxSIZE_AUTO) {.cdecl, 
    importcpp: "SetSize", header: "<wx/wx.h>".}
proc setSize*(this: var WxWindowBase; width: cint; height: cint) {.cdecl, 
    importcpp: "SetSize", header: "<wx/wx.h>".}
proc setSize*(this: var WxWindowBase; size: WxSize) {.cdecl, 
    importcpp: "SetSize", header: "<wx/wx.h>".}
proc setSize*(this: var WxWindowBase; rect: WxRect; 
              sizeFlags: cint = wxSIZE_AUTO) {.cdecl, importcpp: "SetSize", 
    header: "<wx/wx.h>".}
proc move*(this: var WxWindowBase; x: cint; y: cint; 
           flags: cint = wxSIZE_USE_EXISTING) {.cdecl, importcpp: "Move", 
    header: "<wx/wx.h>".}
proc move*(this: var WxWindowBase; pt: WxPoint; 
           flags: cint = wxSIZE_USE_EXISTING) {.cdecl, importcpp: "Move", 
    header: "<wx/wx.h>".}
proc setPosition*(this: var WxWindowBase; pt: WxPoint) {.cdecl, 
    importcpp: "SetPosition", header: "<wx/wx.h>".}
proc `raise`*(this: var WxWindowBase) {.cdecl, importcpp: "Raise", 
                                        header: "<wx/wx.h>".}
proc lower*(this: var WxWindowBase) {.cdecl, importcpp: "Lower", 
                                      header: "<wx/wx.h>".}
proc setClientSize*(this: var WxWindowBase; width: cint; height: cint) {.cdecl, 
    importcpp: "SetClientSize", header: "<wx/wx.h>".}
proc setClientSize*(this: var WxWindowBase; size: WxSize) {.cdecl, 
    importcpp: "SetClientSize", header: "<wx/wx.h>".}
proc setClientSize*(this: var WxWindowBase; rect: WxRect) {.cdecl, 
    importcpp: "SetClientSize", header: "<wx/wx.h>".}
proc getPosition*(this: WxWindowBase; x: ptr cint; y: ptr cint) {.noSideEffect, 
    cdecl, importcpp: "GetPosition", header: "<wx/wx.h>".}
proc getPosition*(this: WxWindowBase): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetPosition", header: "<wx/wx.h>".}
proc getScreenPosition*(this: WxWindowBase; x: ptr cint; y: ptr cint) {.
    noSideEffect, cdecl, importcpp: "GetScreenPosition", header: "<wx/wx.h>".}
proc getScreenPosition*(this: WxWindowBase): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetScreenPosition", header: "<wx/wx.h>".}
proc getSize*(this: WxWindowBase; w: ptr cint; h: ptr cint) {.noSideEffect, 
    cdecl, importcpp: "GetSize", header: "<wx/wx.h>".}
proc getSize*(this: WxWindowBase): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetSize", header: "<wx/wx.h>".}
proc getClientSize*(this: WxWindowBase; w: ptr cint; h: ptr cint) {.
    noSideEffect, cdecl, importcpp: "GetClientSize", header: "<wx/wx.h>".}
proc getClientSize*(this: WxWindowBase): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetClientSize", header: "<wx/wx.h>".}
proc getRect*(this: WxWindowBase): WxRect {.noSideEffect, cdecl, 
    importcpp: "GetRect", header: "<wx/wx.h>".}
proc getScreenRect*(this: WxWindowBase): WxRect {.noSideEffect, cdecl, 
    importcpp: "GetScreenRect", header: "<wx/wx.h>".}
proc getClientAreaOrigin*(this: WxWindowBase): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetClientAreaOrigin", header: "<wx/wx.h>".}
proc getClientRect*(this: WxWindowBase): WxRect {.noSideEffect, cdecl, 
    importcpp: "GetClientRect", header: "<wx/wx.h>".}
proc clientToWindowSize*(this: WxWindowBase; size: WxSize): WxSize {.
    noSideEffect, cdecl, importcpp: "ClientToWindowSize", header: "<wx/wx.h>".}
proc windowToClientSize*(this: WxWindowBase; size: WxSize): WxSize {.
    noSideEffect, cdecl, importcpp: "WindowToClientSize", header: "<wx/wx.h>".}
proc getBestSize*(this: WxWindowBase): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetBestSize", header: "<wx/wx.h>".}
proc getBestSize*(this: WxWindowBase; w: ptr cint; h: ptr cint) {.noSideEffect, 
    cdecl, importcpp: "GetBestSize", header: "<wx/wx.h>".}
proc getBestHeight*(this: WxWindowBase; width: cint): cint {.noSideEffect, 
    cdecl, importcpp: "GetBestHeight", header: "<wx/wx.h>".}
proc getBestWidth*(this: WxWindowBase; height: cint): cint {.noSideEffect, 
    cdecl, importcpp: "GetBestWidth", header: "<wx/wx.h>".}
proc setScrollHelper*(this: var WxWindowBase; sh: ptr WxScrollHelper) {.cdecl, 
    importcpp: "SetScrollHelper", header: "<wx/wx.h>".}
proc getScrollHelper*(this: var WxWindowBase): ptr WxScrollHelper {.cdecl, 
    importcpp: "GetScrollHelper", header: "<wx/wx.h>".}
proc invalidateBestSize*(this: var WxWindowBase) {.cdecl, 
    importcpp: "InvalidateBestSize", header: "<wx/wx.h>".}
proc cacheBestSize*(this: WxWindowBase; size: WxSize) {.noSideEffect, cdecl, 
    importcpp: "CacheBestSize", header: "<wx/wx.h>".}
proc getEffectiveMinSize*(this: WxWindowBase): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetEffectiveMinSize", header: "<wx/wx.h>".}
proc getBestFittingSize*(this: WxWindowBase): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetBestFittingSize", header: "<wx/wx.h>".}
proc getAdjustedMinSize*(this: WxWindowBase): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetAdjustedMinSize", header: "<wx/wx.h>".}
proc setInitialSize*(this: var WxWindowBase; size: WxSize = wxDefaultSize) {.
    cdecl, importcpp: "SetInitialSize", header: "<wx/wx.h>".}
proc setBestFittingSize*(this: var WxWindowBase; size: WxSize = wxDefaultSize) {.
    cdecl, importcpp: "SetBestFittingSize", header: "<wx/wx.h>".}
proc centre*(this: var WxWindowBase; dir = wxBOTH) {.cdecl, importcpp: "Centre", 
    header: "<wx/wx.h>".}
proc center*(this: var WxWindowBase; dir = wxBOTH) {.cdecl, importcpp: "Center", 
    header: "<wx/wx.h>".}
proc centreOnParent*(this: var WxWindowBase; dir = wxBOTH) {.cdecl, 
    importcpp: "CentreOnParent", header: "<wx/wx.h>".}
proc centerOnParent*(this: var WxWindowBase; dir = wxBOTH) {.cdecl, 
    importcpp: "CenterOnParent", header: "<wx/wx.h>".}
proc fit*(this: var WxWindowBase) {.cdecl, importcpp: "Fit", header: "<wx/wx.h>".}
proc fitInside*(this: var WxWindowBase) {.cdecl, importcpp: "FitInside", 
    header: "<wx/wx.h>".}
proc setSizeHints*(this: var WxWindowBase; minW: cint; minH: cint; 
                   maxW: cint = wxDefaultCoord; maxH: cint = wxDefaultCoord; 
                   incW: cint = wxDefaultCoord; incH: cint = wxDefaultCoord) {.
    cdecl, importcpp: "SetSizeHints", header: "<wx/wx.h>".}
proc setSizeHints*(this: var WxWindowBase; minSize: WxSize; 
                   maxSize: WxSize = wxDefaultSize; 
                   incSize: WxSize = wxDefaultSize) {.cdecl, 
    importcpp: "SetSizeHints", header: "<wx/wx.h>".}
proc setMinSize*(this: var WxWindowBase; minSize: WxSize) {.cdecl, 
    importcpp: "SetMinSize", header: "<wx/wx.h>".}
proc setMaxSize*(this: var WxWindowBase; maxSize: WxSize) {.cdecl, 
    importcpp: "SetMaxSize", header: "<wx/wx.h>".}
proc setMinClientSize*(this: var WxWindowBase; size: WxSize) {.cdecl, 
    importcpp: "SetMinClientSize", header: "<wx/wx.h>".}
proc setMaxClientSize*(this: var WxWindowBase; size: WxSize) {.cdecl, 
    importcpp: "SetMaxClientSize", header: "<wx/wx.h>".}
proc getMinSize*(this: WxWindowBase): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetMinSize", header: "<wx/wx.h>".}
proc getMaxSize*(this: WxWindowBase): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetMaxSize", header: "<wx/wx.h>".}
proc getMinClientSize*(this: WxWindowBase): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetMinClientSize", header: "<wx/wx.h>".}
proc getMaxClientSize*(this: WxWindowBase): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetMaxClientSize", header: "<wx/wx.h>".}
proc getMinWidth*(this: WxWindowBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetMinWidth", header: "<wx/wx.h>".}
proc getMinHeight*(this: WxWindowBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetMinHeight", header: "<wx/wx.h>".}
proc getMaxWidth*(this: WxWindowBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetMaxWidth", header: "<wx/wx.h>".}
proc getMaxHeight*(this: WxWindowBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetMaxHeight", header: "<wx/wx.h>".}
proc setVirtualSize*(this: var WxWindowBase; size: WxSize) {.cdecl, 
    importcpp: "SetVirtualSize", header: "<wx/wx.h>".}
proc setVirtualSize*(this: var WxWindowBase; x: cint; y: cint) {.cdecl, 
    importcpp: "SetVirtualSize", header: "<wx/wx.h>".}
proc getVirtualSize*(this: WxWindowBase): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetVirtualSize", header: "<wx/wx.h>".}
proc getVirtualSize*(this: WxWindowBase; x: ptr cint; y: ptr cint) {.
    noSideEffect, cdecl, importcpp: "GetVirtualSize", header: "<wx/wx.h>".}
proc doSetVirtualSize*(this: var WxWindowBase; x: cint; y: cint) {.cdecl, 
    importcpp: "DoSetVirtualSize", header: "<wx/wx.h>".}
proc doGetVirtualSize*(this: WxWindowBase): WxSize {.noSideEffect, cdecl, 
    importcpp: "DoGetVirtualSize", header: "<wx/wx.h>".}
proc getBestVirtualSize*(this: WxWindowBase): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetBestVirtualSize", header: "<wx/wx.h>".}
proc getContentScaleFactor*(this: WxWindowBase): cdouble {.noSideEffect, cdecl, 
    importcpp: "GetContentScaleFactor", header: "<wx/wx.h>".}
proc getWindowBorderSize*(this: WxWindowBase): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetWindowBorderSize", header: "<wx/wx.h>".}
proc informFirstDirection*(this: var WxWindowBase; direction: cint; size: cint; 
                           availableOtherDir: cint): bool {.cdecl, 
    importcpp: "InformFirstDirection", header: "<wx/wx.h>".}
proc sendSizeEvent*(this: var WxWindowBase; flags: cint = 0) {.cdecl, 
    importcpp: "SendSizeEvent", header: "<wx/wx.h>".}
proc sendSizeEventToParent*(this: var WxWindowBase; flags: cint = 0) {.cdecl, 
    importcpp: "SendSizeEventToParent", header: "<wx/wx.h>".}
proc postSizeEvent*(this: var WxWindowBase) {.cdecl, importcpp: "PostSizeEvent", 
    header: "<wx/wx.h>".}
proc postSizeEventToParent*(this: var WxWindowBase) {.cdecl, 
    importcpp: "PostSizeEventToParent", header: "<wx/wx.h>".}
proc beginRepositioningChildren*(this: var WxWindowBase): bool {.cdecl, 
    importcpp: "BeginRepositioningChildren", header: "<wx/wx.h>".}
proc endRepositioningChildren*(this: var WxWindowBase) {.cdecl, 
    importcpp: "EndRepositioningChildren", header: "<wx/wx.h>".}
type 
  ChildrenRepositioningGuard* {.importcpp: "ChildrenRepositioningGuard", 
                                header: "<wx/wx.h>".} = object 
  

proc constructChildrenRepositioningGuard*(win: ptr WxWindowBase): ChildrenRepositioningGuard {.
    cdecl, constructor, importcpp: "ChildrenRepositioningGuard(@)", 
    header: "<wx/wx.h>".}
proc destroyChildrenRepositioningGuard*(this: var ChildrenRepositioningGuard) {.
    cdecl, importcpp: "#.~ChildrenRepositioningGuard()", header: "<wx/wx.h>".}
proc show*(this: var WxWindowBase; show: bool = true): bool {.cdecl, 
    importcpp: "Show", header: "<wx/wx.h>".}
proc hide*(this: var WxWindowBase): bool {.cdecl, importcpp: "Hide", 
    header: "<wx/wx.h>".}
proc showWithEffect*(this: var WxWindowBase; effect: WxShowEffect; 
                     timeout: cuint = 0): bool {.cdecl, 
    importcpp: "ShowWithEffect", header: "<wx/wx.h>".}
proc hideWithEffect*(this: var WxWindowBase; effect: WxShowEffect; 
                     timeout: cuint = 0): bool {.cdecl, 
    importcpp: "HideWithEffect", header: "<wx/wx.h>".}
proc enable*(this: var WxWindowBase; enable: bool = true): bool {.cdecl, 
    importcpp: "Enable", header: "<wx/wx.h>".}
proc disable*(this: var WxWindowBase): bool {.cdecl, importcpp: "Disable", 
    header: "<wx/wx.h>".}
proc isShown*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsShown", header: "<wx/wx.h>".}
proc isEnabled*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsEnabled", header: "<wx/wx.h>".}
proc isThisEnabled*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsThisEnabled", header: "<wx/wx.h>".}
proc isShownOnScreen*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsShownOnScreen", header: "<wx/wx.h>".}
proc setWindowStyleFlag*(this: var WxWindowBase; style: clong) {.cdecl, 
    importcpp: "SetWindowStyleFlag", header: "<wx/wx.h>".}
proc getWindowStyleFlag*(this: WxWindowBase): clong {.noSideEffect, cdecl, 
    importcpp: "GetWindowStyleFlag", header: "<wx/wx.h>".}
proc setWindowStyle*(this: var WxWindowBase; style: clong) {.cdecl, 
    importcpp: "SetWindowStyle", header: "<wx/wx.h>".}
proc getWindowStyle*(this: WxWindowBase): clong {.noSideEffect, cdecl, 
    importcpp: "GetWindowStyle", header: "<wx/wx.h>".}
proc hasFlag*(this: WxWindowBase; flag: cint): bool {.noSideEffect, cdecl, 
    importcpp: "HasFlag", header: "<wx/wx.h>".}
proc isRetained*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsRetained", header: "<wx/wx.h>".}
proc toggleWindowStyle*(this: var WxWindowBase; flag: cint): bool {.cdecl, 
    importcpp: "ToggleWindowStyle", header: "<wx/wx.h>".}
proc setExtraStyle*(this: var WxWindowBase; exStyle: clong) {.cdecl, 
    importcpp: "SetExtraStyle", header: "<wx/wx.h>".}
proc getExtraStyle*(this: WxWindowBase): clong {.noSideEffect, cdecl, 
    importcpp: "GetExtraStyle", header: "<wx/wx.h>".}
proc hasExtraStyle*(this: WxWindowBase; exFlag: cint): bool {.noSideEffect, 
    cdecl, importcpp: "HasExtraStyle", header: "<wx/wx.h>".}
proc setThemeEnabled*(this: var WxWindowBase; enableTheme: bool) {.cdecl, 
    importcpp: "SetThemeEnabled", header: "<wx/wx.h>".}
proc getThemeEnabled*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "GetThemeEnabled", header: "<wx/wx.h>".}
proc setFocus*(this: var WxWindowBase) {.cdecl, importcpp: "SetFocus", 
    header: "<wx/wx.h>".}
proc setFocusFromKbd*(this: var WxWindowBase) {.cdecl, 
    importcpp: "SetFocusFromKbd", header: "<wx/wx.h>".}
proc findFocus*(): ptr WxWindow {.cdecl, 
                                  importcpp: "wxWindowBase::FindFocus(@)", 
                                  header: "<wx/wx.h>".}
proc doFindFocus*(): ptr WxWindow {.cdecl, 
                                    importcpp: "wxWindowBase::DoFindFocus(@)", 
                                    header: "<wx/wx.h>".}
proc hasFocus*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "HasFocus", header: "<wx/wx.h>".}
proc acceptsFocus*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "AcceptsFocus", header: "<wx/wx.h>".}
proc acceptsFocusRecursively*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "AcceptsFocusRecursively", header: "<wx/wx.h>".}
proc acceptsFocusFromKeyboard*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "AcceptsFocusFromKeyboard", header: "<wx/wx.h>".}
proc canBeFocused*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "CanBeFocused", header: "<wx/wx.h>".}
proc isFocusable*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsFocusable", header: "<wx/wx.h>".}
proc canAcceptFocus*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "CanAcceptFocus", header: "<wx/wx.h>".}
proc canAcceptFocusFromKeyboard*(this: WxWindowBase): bool {.noSideEffect, 
    cdecl, importcpp: "CanAcceptFocusFromKeyboard", header: "<wx/wx.h>".}
proc setCanFocus*(this: var WxWindowBase; canFocus: bool) {.cdecl, 
    importcpp: "SetCanFocus", header: "<wx/wx.h>".}
proc navigateIn*(this: var WxWindowBase; flags: cint = isForward): bool {.cdecl, 
    importcpp: "NavigateIn", header: "<wx/wx.h>".}
proc navigate*(this: var WxWindowBase; flags: cint = isForward): bool {.cdecl, 
    importcpp: "Navigate", header: "<wx/wx.h>".}
proc handleAsNavigationKey*(this: var WxWindowBase; event: WxKeyEvent): bool {.
    cdecl, importcpp: "HandleAsNavigationKey", header: "<wx/wx.h>".}
proc moveBeforeInTabOrder*(this: var WxWindowBase; win: ptr WxWindow) {.cdecl, 
    importcpp: "MoveBeforeInTabOrder", header: "<wx/wx.h>".}
proc moveAfterInTabOrder*(this: var WxWindowBase; win: ptr WxWindow) {.cdecl, 
    importcpp: "MoveAfterInTabOrder", header: "<wx/wx.h>".}
proc getChildren*(this: WxWindowBase): WxWindowList {.noSideEffect, cdecl, 
    importcpp: "GetChildren", header: "<wx/wx.h>".}
proc getChildren*(this: var WxWindowBase): var WxWindowList {.cdecl, 
    importcpp: "GetChildren", header: "<wx/wx.h>".}
proc getWindowChildren*(this: WxWindowBase): WxWindowList {.noSideEffect, cdecl, 
    importcpp: "GetWindowChildren", header: "<wx/wx.h>".}
proc getPrevSibling*(this: WxWindowBase): ptr WxWindow {.noSideEffect, cdecl, 
    importcpp: "GetPrevSibling", header: "<wx/wx.h>".}
proc getNextSibling*(this: WxWindowBase): ptr WxWindow {.noSideEffect, cdecl, 
    importcpp: "GetNextSibling", header: "<wx/wx.h>".}
proc getParent*(this: WxWindowBase): ptr WxWindow {.noSideEffect, cdecl, 
    importcpp: "GetParent", header: "<wx/wx.h>".}
proc getGrandParent*(this: WxWindowBase): ptr WxWindow {.noSideEffect, cdecl, 
    importcpp: "GetGrandParent", header: "<wx/wx.h>".}
proc isTopLevel*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsTopLevel", header: "<wx/wx.h>".}
proc isDescendant*(this: WxWindowBase; win: ptr WxWindowBase): bool {.
    noSideEffect, cdecl, importcpp: "IsDescendant", header: "<wx/wx.h>".}
proc setParent*(this: var WxWindowBase; parent: ptr WxWindowBase) {.cdecl, 
    importcpp: "SetParent", header: "<wx/wx.h>".}
proc reparent*(this: var WxWindowBase; newParent: ptr WxWindowBase): bool {.
    cdecl, importcpp: "Reparent", header: "<wx/wx.h>".}
proc addChild*(this: var WxWindowBase; child: ptr WxWindowBase) {.cdecl, 
    importcpp: "AddChild", header: "<wx/wx.h>".}
proc removeChild*(this: var WxWindowBase; child: ptr WxWindowBase) {.cdecl, 
    importcpp: "RemoveChild", header: "<wx/wx.h>".}
proc isClientAreaChild*(this: WxWindowBase; child: ptr WxWindow): bool {.
    noSideEffect, cdecl, importcpp: "IsClientAreaChild", header: "<wx/wx.h>".}
proc findWindow*(this: WxWindowBase; winid: clong): ptr WxWindow {.noSideEffect, 
    cdecl, importcpp: "FindWindow", header: "<wx/wx.h>".}
proc findWindow*(this: WxWindowBase; name: WxString): ptr WxWindow {.
    noSideEffect, cdecl, importcpp: "FindWindow", header: "<wx/wx.h>".}
proc findWindowById*(winid: clong; parent: ptr WxWindow = nil): ptr WxWindow {.
    cdecl, importcpp: "wxWindowBase::FindWindowById(@)", header: "<wx/wx.h>".}
proc findWindowByName*(name: WxString; parent: ptr WxWindow = nil): ptr WxWindow {.
    cdecl, importcpp: "wxWindowBase::FindWindowByName(@)", header: "<wx/wx.h>".}
proc findWindowByLabel*(label: WxString; parent: ptr WxWindow = nil): ptr WxWindow {.
    cdecl, importcpp: "wxWindowBase::FindWindowByLabel(@)", header: "<wx/wx.h>".}
proc getEventHandler*(this: WxWindowBase): ptr WxEvtHandler {.noSideEffect, 
    cdecl, importcpp: "GetEventHandler", header: "<wx/wx.h>".}
proc setEventHandler*(this: var WxWindowBase; handler: ptr WxEvtHandler) {.
    cdecl, importcpp: "SetEventHandler", header: "<wx/wx.h>".}
proc pushEventHandler*(this: var WxWindowBase; handler: ptr WxEvtHandler) {.
    cdecl, importcpp: "PushEventHandler", header: "<wx/wx.h>".}
proc popEventHandler*(this: var WxWindowBase; deleteHandler: bool = false): ptr WxEvtHandler {.
    cdecl, importcpp: "PopEventHandler", header: "<wx/wx.h>".}
proc removeEventHandler*(this: var WxWindowBase; handler: ptr WxEvtHandler): bool {.
    cdecl, importcpp: "RemoveEventHandler", header: "<wx/wx.h>".}
proc processWindowEvent*(this: var WxWindowBase; event: var WxEvent): bool {.
    cdecl, importcpp: "ProcessWindowEvent", header: "<wx/wx.h>".}
proc processWindowEventLocally*(this: var WxWindowBase; event: var WxEvent): bool {.
    cdecl, importcpp: "ProcessWindowEventLocally", header: "<wx/wx.h>".}
proc handleWindowEvent*(this: WxWindowBase; event: var WxEvent): bool {.
    noSideEffect, cdecl, importcpp: "HandleWindowEvent", header: "<wx/wx.h>".}
proc setNextHandler*(this: var WxWindowBase; handler: ptr WxEvtHandler) {.cdecl, 
    importcpp: "SetNextHandler", header: "<wx/wx.h>".}
proc setPreviousHandler*(this: var WxWindowBase; handler: ptr WxEvtHandler) {.
    cdecl, importcpp: "SetPreviousHandler", header: "<wx/wx.h>".}
proc setValidator*(this: var WxWindowBase; validator: WxValidator) {.cdecl, 
    importcpp: "SetValidator", header: "<wx/wx.h>".}
proc getValidator*(this: var WxWindowBase): ptr WxValidator {.cdecl, 
    importcpp: "GetValidator", header: "<wx/wx.h>".}
proc validate*(this: var WxWindowBase): bool {.cdecl, importcpp: "Validate", 
    header: "<wx/wx.h>".}
proc transferDataToWindow*(this: var WxWindowBase): bool {.cdecl, 
    importcpp: "TransferDataToWindow", header: "<wx/wx.h>".}
proc transferDataFromWindow*(this: var WxWindowBase): bool {.cdecl, 
    importcpp: "TransferDataFromWindow", header: "<wx/wx.h>".}
proc initDialog*(this: var WxWindowBase) {.cdecl, importcpp: "InitDialog", 
    header: "<wx/wx.h>".}
proc setAcceleratorTable*(this: var WxWindowBase; accel: WxAcceleratorTable) {.
    cdecl, importcpp: "SetAcceleratorTable", header: "<wx/wx.h>".}
proc getAcceleratorTable*(this: var WxWindowBase): ptr WxAcceleratorTable {.
    cdecl, importcpp: "GetAcceleratorTable", header: "<wx/wx.h>".}
proc registerHotKey*(this: var WxWindowBase; hotkeyId: cint; modifiers: cint; 
                     keycode: cint): bool {.cdecl, importcpp: "RegisterHotKey", 
    header: "<wx/wx.h>".}
proc unregisterHotKey*(this: var WxWindowBase; hotkeyId: cint): bool {.cdecl, 
    importcpp: "UnregisterHotKey", header: "<wx/wx.h>".}
proc convertPixelsToDialog*(this: WxWindowBase; pt: WxPoint): WxPoint {.
    noSideEffect, cdecl, importcpp: "ConvertPixelsToDialog", header: "<wx/wx.h>".}
proc convertDialogToPixels*(this: WxWindowBase; pt: WxPoint): WxPoint {.
    noSideEffect, cdecl, importcpp: "ConvertDialogToPixels", header: "<wx/wx.h>".}
proc convertPixelsToDialog*(this: WxWindowBase; sz: WxSize): WxSize {.
    noSideEffect, cdecl, importcpp: "ConvertPixelsToDialog", header: "<wx/wx.h>".}
proc convertDialogToPixels*(this: WxWindowBase; sz: WxSize): WxSize {.
    noSideEffect, cdecl, importcpp: "ConvertDialogToPixels", header: "<wx/wx.h>".}
proc warpPointer*(this: var WxWindowBase; x: cint; y: cint) {.cdecl, 
    importcpp: "WarpPointer", header: "<wx/wx.h>".}
proc captureMouse*(this: var WxWindowBase) {.cdecl, importcpp: "CaptureMouse", 
    header: "<wx/wx.h>".}
proc releaseMouse*(this: var WxWindowBase) {.cdecl, importcpp: "ReleaseMouse", 
    header: "<wx/wx.h>".}
proc getCapture*(): ptr WxWindow {.cdecl, 
                                   importcpp: "wxWindowBase::GetCapture(@)", 
                                   header: "<wx/wx.h>".}
proc hasCapture*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "HasCapture", header: "<wx/wx.h>".}
proc refresh*(this: var WxWindowBase; eraseBackground: bool = true; 
              rect: ptr WxRect = nil) {.cdecl, importcpp: "Refresh", 
                                        header: "<wx/wx.h>".}
proc refreshRect*(this: var WxWindowBase; rect: WxRect; 
                  eraseBackground: bool = true) {.cdecl, 
    importcpp: "RefreshRect", header: "<wx/wx.h>".}
proc update*(this: var WxWindowBase) {.cdecl, importcpp: "Update", 
                                       header: "<wx/wx.h>".}
proc clearBackground*(this: var WxWindowBase) {.cdecl, 
    importcpp: "ClearBackground", header: "<wx/wx.h>".}
proc freeze*(this: var WxWindowBase) {.cdecl, importcpp: "Freeze", 
                                       header: "<wx/wx.h>".}
proc thaw*(this: var WxWindowBase) {.cdecl, importcpp: "Thaw", 
                                     header: "<wx/wx.h>".}
proc isFrozen*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsFrozen", header: "<wx/wx.h>".}
proc isDoubleBuffered*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsDoubleBuffered", header: "<wx/wx.h>".}
proc getUpdateRegion*(this: WxWindowBase): WxRegion {.noSideEffect, cdecl, 
    importcpp: "GetUpdateRegion", header: "<wx/wx.h>".}
proc getUpdateRegion*(this: var WxWindowBase): var WxRegion {.cdecl, 
    importcpp: "GetUpdateRegion", header: "<wx/wx.h>".}
proc getUpdateClientRect*(this: WxWindowBase): WxRect {.noSideEffect, cdecl, 
    importcpp: "GetUpdateClientRect", header: "<wx/wx.h>".}
proc doIsExposed*(this: WxWindowBase; x: cint; y: cint): bool {.noSideEffect, 
    cdecl, importcpp: "DoIsExposed", header: "<wx/wx.h>".}
proc doIsExposed*(this: WxWindowBase; x: cint; y: cint; w: cint; h: cint): bool {.
    noSideEffect, cdecl, importcpp: "DoIsExposed", header: "<wx/wx.h>".}
proc isExposed*(this: WxWindowBase; x: cint; y: cint): bool {.noSideEffect, 
    cdecl, importcpp: "IsExposed", header: "<wx/wx.h>".}
proc isExposed*(this: WxWindowBase; x: cint; y: cint; w: cint; h: cint): bool {.
    noSideEffect, cdecl, importcpp: "IsExposed", header: "<wx/wx.h>".}
proc isExposed*(this: WxWindowBase; pt: WxPoint): bool {.noSideEffect, cdecl, 
    importcpp: "IsExposed", header: "<wx/wx.h>".}
proc isExposed*(this: WxWindowBase; rect: WxRect): bool {.noSideEffect, cdecl, 
    importcpp: "IsExposed", header: "<wx/wx.h>".}
proc getDefaultAttributes*(this: WxWindowBase): WxVisualAttributes {.
    noSideEffect, cdecl, importcpp: "GetDefaultAttributes", header: "<wx/wx.h>".}
proc getClassDefaultAttributes*(variant: WxWindowVariant = wxWINDOW_VARIANT_NORMAL): WxVisualAttributes {.
    cdecl, importcpp: "wxWindowBase::GetClassDefaultAttributes(@)", 
    header: "<wx/wx.h>".}
proc setBackgroundColour*(this: var WxWindowBase; colour: WxColour): bool {.
    cdecl, importcpp: "SetBackgroundColour", header: "<wx/wx.h>".}
proc setOwnBackgroundColour*(this: var WxWindowBase; colour: WxColour) {.cdecl, 
    importcpp: "SetOwnBackgroundColour", header: "<wx/wx.h>".}
proc getBackgroundColour*(this: WxWindowBase): WxColour {.noSideEffect, cdecl, 
    importcpp: "GetBackgroundColour", header: "<wx/wx.h>".}
proc inheritsBackgroundColour*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "InheritsBackgroundColour", header: "<wx/wx.h>".}
proc useBgCol*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "UseBgCol", header: "<wx/wx.h>".}
proc setForegroundColour*(this: var WxWindowBase; colour: WxColour): bool {.
    cdecl, importcpp: "SetForegroundColour", header: "<wx/wx.h>".}
proc setOwnForegroundColour*(this: var WxWindowBase; colour: WxColour) {.cdecl, 
    importcpp: "SetOwnForegroundColour", header: "<wx/wx.h>".}
proc getForegroundColour*(this: WxWindowBase): WxColour {.noSideEffect, cdecl, 
    importcpp: "GetForegroundColour", header: "<wx/wx.h>".}
proc setBackgroundStyle*(this: var WxWindowBase; style: WxBackgroundStyle): bool {.
    cdecl, importcpp: "SetBackgroundStyle", header: "<wx/wx.h>".}
proc getBackgroundStyle*(this: WxWindowBase): WxBackgroundStyle {.noSideEffect, 
    cdecl, importcpp: "GetBackgroundStyle", header: "<wx/wx.h>".}
proc hasTransparentBackground*(this: var WxWindowBase): bool {.cdecl, 
    importcpp: "HasTransparentBackground", header: "<wx/wx.h>".}
proc isTransparentBackgroundSupported*(this: WxWindowBase; 
                                       reason: ptr WxString = nil): bool {.
    noSideEffect, cdecl, importcpp: "IsTransparentBackgroundSupported", 
    header: "<wx/wx.h>".}
proc setFont*(this: var WxWindowBase; font: WxFont): bool {.cdecl, 
    importcpp: "SetFont", header: "<wx/wx.h>".}
proc setOwnFont*(this: var WxWindowBase; font: WxFont) {.cdecl, 
    importcpp: "SetOwnFont", header: "<wx/wx.h>".}
proc getFont*(this: WxWindowBase): WxFont {.noSideEffect, cdecl, 
    importcpp: "GetFont", header: "<wx/wx.h>".}
proc setCursor*(this: var WxWindowBase; cursor: WxCursor): bool {.cdecl, 
    importcpp: "SetCursor", header: "<wx/wx.h>".}
proc getCursor*(this: WxWindowBase): WxCursor {.noSideEffect, cdecl, 
    importcpp: "GetCursor", header: "<wx/wx.h>".}
proc setCaret*(this: var WxWindowBase; caret: ptr WxCaret) {.cdecl, 
    importcpp: "SetCaret", header: "<wx/wx.h>".}
proc getCaret*(this: WxWindowBase): ptr WxCaret {.noSideEffect, cdecl, 
    importcpp: "GetCaret", header: "<wx/wx.h>".}
proc getCharHeight*(this: WxWindowBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetCharHeight", header: "<wx/wx.h>".}
proc getCharWidth*(this: WxWindowBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetCharWidth", header: "<wx/wx.h>".}
proc getTextExtent*(this: WxWindowBase; string: WxString; x: ptr cint; 
                    y: ptr cint; descent: ptr cint = nil; 
                    externalLeading: ptr cint = nil; font: ptr WxFont = nil) {.
    noSideEffect, cdecl, importcpp: "GetTextExtent", header: "<wx/wx.h>".}
proc getTextExtent*(this: WxWindowBase; string: WxString): WxSize {.
    noSideEffect, cdecl, importcpp: "GetTextExtent", header: "<wx/wx.h>".}
proc clientToScreen*(this: WxWindowBase; x: ptr cint; y: ptr cint) {.
    noSideEffect, cdecl, importcpp: "ClientToScreen", header: "<wx/wx.h>".}
proc screenToClient*(this: WxWindowBase; x: ptr cint; y: ptr cint) {.
    noSideEffect, cdecl, importcpp: "ScreenToClient", header: "<wx/wx.h>".}
proc clientToScreen*(this: WxWindowBase; pt: WxPoint): WxPoint {.noSideEffect, 
    cdecl, importcpp: "ClientToScreen", header: "<wx/wx.h>".}
proc screenToClient*(this: WxWindowBase; pt: WxPoint): WxPoint {.noSideEffect, 
    cdecl, importcpp: "ScreenToClient", header: "<wx/wx.h>".}
proc hitTest*(this: WxWindowBase; x: WxCoord; y: WxCoord): WxHitTest {.
    noSideEffect, cdecl, importcpp: "HitTest", header: "<wx/wx.h>".}
proc hitTest*(this: WxWindowBase; pt: WxPoint): WxHitTest {.noSideEffect, cdecl, 
    importcpp: "HitTest", header: "<wx/wx.h>".}
proc getBorder*(this: WxWindowBase; flags: clong): WxBorder {.noSideEffect, 
    cdecl, importcpp: "GetBorder", header: "<wx/wx.h>".}
proc getBorder*(this: WxWindowBase): WxBorder {.noSideEffect, cdecl, 
    importcpp: "GetBorder", header: "<wx/wx.h>".}
proc updateWindowUI*(this: var WxWindowBase; flags = wxUPDATE_UI_NONE) {.cdecl, 
    importcpp: "UpdateWindowUI", header: "<wx/wx.h>".}
proc doUpdateWindowUI*(this: var WxWindowBase; event: var WxUpdateUIEvent) {.
    cdecl, importcpp: "DoUpdateWindowUI", header: "<wx/wx.h>".}
proc popupMenu*(this: var WxWindowBase; menu: ptr WxMenu; 
                pos: WxPoint = wxDefaultPosition): bool {.cdecl, 
    importcpp: "PopupMenu", header: "<wx/wx.h>".}
proc popupMenu*(this: var WxWindowBase; menu: ptr WxMenu; x: cint; y: cint): bool {.
    cdecl, importcpp: "PopupMenu", header: "<wx/wx.h>".}
proc getPopupMenuSelectionFromUser*(this: var WxWindowBase; menu: var WxMenu; 
                                    pos: WxPoint = wxDefaultPosition): cint {.
    cdecl, importcpp: "GetPopupMenuSelectionFromUser", header: "<wx/wx.h>".}
proc getPopupMenuSelectionFromUser*(this: var WxWindowBase; menu: var WxMenu; 
                                    x: cint; y: cint): cint {.cdecl, 
    importcpp: "GetPopupMenuSelectionFromUser", header: "<wx/wx.h>".}
proc hasMultiplePages*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "HasMultiplePages", header: "<wx/wx.h>".}
proc canScroll*(this: WxWindowBase; orient: cint): bool {.noSideEffect, cdecl, 
    importcpp: "CanScroll", header: "<wx/wx.h>".}
proc hasScrollbar*(this: WxWindowBase; orient: cint): bool {.noSideEffect, 
    cdecl, importcpp: "HasScrollbar", header: "<wx/wx.h>".}
proc setScrollbar*(this: var WxWindowBase; orient: cint; pos: cint; 
                   thumbvisible: cint; range: cint; refresh: bool = true) {.
    cdecl, importcpp: "SetScrollbar", header: "<wx/wx.h>".}
proc setScrollPos*(this: var WxWindowBase; orient: cint; pos: cint; 
                   refresh: bool = true) {.cdecl, importcpp: "SetScrollPos", 
    header: "<wx/wx.h>".}
proc getScrollPos*(this: WxWindowBase; orient: cint): cint {.noSideEffect, 
    cdecl, importcpp: "GetScrollPos", header: "<wx/wx.h>".}
proc getScrollThumb*(this: WxWindowBase; orient: cint): cint {.noSideEffect, 
    cdecl, importcpp: "GetScrollThumb", header: "<wx/wx.h>".}
proc getScrollRange*(this: WxWindowBase; orient: cint): cint {.noSideEffect, 
    cdecl, importcpp: "GetScrollRange", header: "<wx/wx.h>".}
proc scrollWindow*(this: var WxWindowBase; dx: cint; dy: cint; 
                   rect: ptr WxRect = nil) {.cdecl, importcpp: "ScrollWindow", 
    header: "<wx/wx.h>".}
proc scrollLines*(this: var WxWindowBase; lines: cint): bool {.cdecl, 
    importcpp: "ScrollLines", header: "<wx/wx.h>".}
proc scrollPages*(this: var WxWindowBase; pages: cint): bool {.cdecl, 
    importcpp: "ScrollPages", header: "<wx/wx.h>".}
proc lineUp*(this: var WxWindowBase): bool {.cdecl, importcpp: "LineUp", 
    header: "<wx/wx.h>".}
proc lineDown*(this: var WxWindowBase): bool {.cdecl, importcpp: "LineDown", 
    header: "<wx/wx.h>".}
proc pageUp*(this: var WxWindowBase): bool {.cdecl, importcpp: "PageUp", 
    header: "<wx/wx.h>".}
proc pageDown*(this: var WxWindowBase): bool {.cdecl, importcpp: "PageDown", 
    header: "<wx/wx.h>".}
proc alwaysShowScrollbars*(this: var WxWindowBase; horz: bool = true; 
                           vert: bool = true) {.cdecl, 
    importcpp: "AlwaysShowScrollbars", header: "<wx/wx.h>".}
proc isScrollbarAlwaysShown*(this: WxWindowBase; orient: cint): bool {.
    noSideEffect, cdecl, importcpp: "IsScrollbarAlwaysShown", 
    header: "<wx/wx.h>".}
proc setHelpText*(this: var WxWindowBase; text: WxString) {.cdecl, 
    importcpp: "SetHelpText", header: "<wx/wx.h>".}
proc getHelpTextAtPoint*(this: WxWindowBase; pt: WxPoint; origin: Origin): WxString {.
    noSideEffect, cdecl, importcpp: "GetHelpTextAtPoint", header: "<wx/wx.h>".}
proc getHelpText*(this: WxWindowBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetHelpText", header: "<wx/wx.h>".}
proc setToolTip*(this: var WxWindowBase; tip: WxString) {.cdecl, 
    importcpp: "SetToolTip", header: "<wx/wx.h>".}
proc setToolTip*(this: var WxWindowBase; tip: ptr WxToolTip) {.cdecl, 
    importcpp: "SetToolTip", header: "<wx/wx.h>".}
proc unsetToolTip*(this: var WxWindowBase) {.cdecl, importcpp: "UnsetToolTip", 
    header: "<wx/wx.h>".}
proc getToolTip*(this: WxWindowBase): ptr WxToolTip {.noSideEffect, cdecl, 
    importcpp: "GetToolTip", header: "<wx/wx.h>".}
proc getToolTipText*(this: WxWindowBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetToolTipText", header: "<wx/wx.h>".}
proc copyToolTip*(this: var WxWindowBase; tip: ptr WxToolTip): bool {.cdecl, 
    importcpp: "CopyToolTip", header: "<wx/wx.h>".}
proc setDropTarget*(this: var WxWindowBase; dropTarget: ptr WxDropTarget) {.
    cdecl, importcpp: "SetDropTarget", header: "<wx/wx.h>".}
proc getDropTarget*(this: WxWindowBase): ptr WxDropTarget {.noSideEffect, cdecl, 
    importcpp: "GetDropTarget", header: "<wx/wx.h>".}
proc dragAcceptFiles*(this: var WxWindowBase; accept: bool) {.cdecl, 
    importcpp: "DragAcceptFiles", header: "<wx/wx.h>".}
proc setConstraints*(this: var WxWindowBase; 
                     constraints: ptr WxLayoutConstraints) {.cdecl, 
    importcpp: "SetConstraints", header: "<wx/wx.h>".}
proc getConstraints*(this: WxWindowBase): ptr WxLayoutConstraints {.
    noSideEffect, cdecl, importcpp: "GetConstraints", header: "<wx/wx.h>".}
proc unsetConstraints*(this: var WxWindowBase; c: ptr WxLayoutConstraints) {.
    cdecl, importcpp: "UnsetConstraints", header: "<wx/wx.h>".}
proc getConstraintsInvolvedIn*(this: WxWindowBase): ptr WxWindowList {.
    noSideEffect, cdecl, importcpp: "GetConstraintsInvolvedIn", 
    header: "<wx/wx.h>".}
proc addConstraintReference*(this: var WxWindowBase; otherWin: ptr WxWindowBase) {.
    cdecl, importcpp: "AddConstraintReference", header: "<wx/wx.h>".}
proc removeConstraintReference*(this: var WxWindowBase; 
                                otherWin: ptr WxWindowBase) {.cdecl, 
    importcpp: "RemoveConstraintReference", header: "<wx/wx.h>".}
proc deleteRelatedConstraints*(this: var WxWindowBase) {.cdecl, 
    importcpp: "DeleteRelatedConstraints", header: "<wx/wx.h>".}
proc resetConstraints*(this: var WxWindowBase) {.cdecl, 
    importcpp: "ResetConstraints", header: "<wx/wx.h>".}
proc setConstraintSizes*(this: var WxWindowBase; recurse: bool = true) {.cdecl, 
    importcpp: "SetConstraintSizes", header: "<wx/wx.h>".}
proc layoutPhase1*(this: var WxWindowBase; noChanges: ptr cint): bool {.cdecl, 
    importcpp: "LayoutPhase1", header: "<wx/wx.h>".}
proc layoutPhase2*(this: var WxWindowBase; noChanges: ptr cint): bool {.cdecl, 
    importcpp: "LayoutPhase2", header: "<wx/wx.h>".}
proc doPhase*(this: var WxWindowBase; phase: cint): bool {.cdecl, 
    importcpp: "DoPhase", header: "<wx/wx.h>".}
proc setSizeConstraint*(this: var WxWindowBase; x: cint; y: cint; w: cint; 
                        h: cint) {.cdecl, importcpp: "SetSizeConstraint", 
                                   header: "<wx/wx.h>".}
proc moveConstraint*(this: var WxWindowBase; x: cint; y: cint) {.cdecl, 
    importcpp: "MoveConstraint", header: "<wx/wx.h>".}
proc getSizeConstraint*(this: WxWindowBase; w: ptr cint; h: ptr cint) {.
    noSideEffect, cdecl, importcpp: "GetSizeConstraint", header: "<wx/wx.h>".}
proc getClientSizeConstraint*(this: WxWindowBase; w: ptr cint; h: ptr cint) {.
    noSideEffect, cdecl, importcpp: "GetClientSizeConstraint", 
    header: "<wx/wx.h>".}
proc getPositionConstraint*(this: WxWindowBase; x: ptr cint; y: ptr cint) {.
    noSideEffect, cdecl, importcpp: "GetPositionConstraint", header: "<wx/wx.h>".}
proc setAutoLayout*(this: var WxWindowBase; autoLayout: bool) {.cdecl, 
    importcpp: "SetAutoLayout", header: "<wx/wx.h>".}
proc getAutoLayout*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "GetAutoLayout", header: "<wx/wx.h>".}
proc layout*(this: var WxWindowBase): bool {.cdecl, importcpp: "Layout", 
    header: "<wx/wx.h>".}
proc setSizer*(this: var WxWindowBase; sizer: ptr WxSizer; 
               deleteOld: bool = true) {.cdecl, importcpp: "SetSizer", 
    header: "<wx/wx.h>".}
proc setSizerAndFit*(this: var WxWindowBase; sizer: ptr WxSizer; 
                     deleteOld: bool = true) {.cdecl, 
    importcpp: "SetSizerAndFit", header: "<wx/wx.h>".}
proc getSizer*(this: WxWindowBase): ptr WxSizer {.noSideEffect, cdecl, 
    importcpp: "GetSizer", header: "<wx/wx.h>".}
proc setContainingSizer*(this: var WxWindowBase; sizer: ptr WxSizer) {.cdecl, 
    importcpp: "SetContainingSizer", header: "<wx/wx.h>".}
proc getContainingSizer*(this: WxWindowBase): ptr WxSizer {.noSideEffect, cdecl, 
    importcpp: "GetContainingSizer", header: "<wx/wx.h>".}
proc setTransparent*(this: var WxWindowBase; alpha: WxByte): bool {.cdecl, 
    importcpp: "SetTransparent", header: "<wx/wx.h>".}
proc canSetTransparent*(this: var WxWindowBase): bool {.cdecl, 
    importcpp: "CanSetTransparent", header: "<wx/wx.h>".}
proc onSysColourChanged*(this: var WxWindowBase; 
                         event: var WxSysColourChangedEvent) {.cdecl, 
    importcpp: "OnSysColourChanged", header: "<wx/wx.h>".}
proc onInitDialog*(this: var WxWindowBase; event: var WxInitDialogEvent) {.
    cdecl, importcpp: "OnInitDialog", header: "<wx/wx.h>".}
proc onMiddleClick*(this: var WxWindowBase; event: var WxMouseEvent) {.cdecl, 
    importcpp: "OnMiddleClick", header: "<wx/wx.h>".}
proc onHelp*(this: var WxWindowBase; event: var WxHelpEvent) {.cdecl, 
    importcpp: "OnHelp", header: "<wx/wx.h>".}
proc onInternalIdle*(this: var WxWindowBase) {.cdecl, 
    importcpp: "OnInternalIdle", header: "<wx/wx.h>".}
proc sendIdleEvents*(this: var WxWindowBase; event: var WxIdleEvent): bool {.
    cdecl, importcpp: "SendIdleEvents", header: "<wx/wx.h>".}
proc getHandle*(this: WxWindowBase): WXWidget {.noSideEffect, cdecl, 
    importcpp: "GetHandle", header: "<wx/wx.h>".}
proc associateHandle*(this: var WxWindowBase; handle: WXWidget) {.cdecl, 
    importcpp: "AssociateHandle", header: "<wx/wx.h>".}
proc dissociateHandle*(this: var WxWindowBase) {.cdecl, 
    importcpp: "DissociateHandle", header: "<wx/wx.h>".}
proc inheritAttributes*(this: var WxWindowBase) {.cdecl, 
    importcpp: "InheritAttributes", header: "<wx/wx.h>".}
proc shouldInheritColours*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "ShouldInheritColours", header: "<wx/wx.h>".}
proc canBeOutsideClientArea*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "CanBeOutsideClientArea", header: "<wx/wx.h>".}
proc canApplyThemeBorder*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "CanApplyThemeBorder", header: "<wx/wx.h>".}
proc getMainWindowOfCompositeControl*(this: var WxWindowBase): ptr WxWindow {.
    cdecl, importcpp: "GetMainWindowOfCompositeControl", header: "<wx/wx.h>".}
proc isTopNavigationDomain*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsTopNavigationDomain", header: "<wx/wx.h>".}

proc wxFindWindowAtPointer*(pt: var WxPoint): ptr WxWindow {.cdecl, 
    importcpp: "wxFindWindowAtPointer(@)", header: "<wx/wx.h>".}

proc wxGetMousePosition*(): WxPoint {.cdecl, importcpp: "wxGetMousePosition(@)", 
                                      header: "<wx/wx.h>".}

proc wxGetActiveWindow*(): ptr WxWindow {.cdecl, 
    importcpp: "wxGetActiveWindow(@)", header: "<wx/wx.h>".}

proc wxGetTopLevelParent*(win: ptr WxWindow): ptr WxWindow {.cdecl, 
    importcpp: "wxGetTopLevelParent(@)", header: "<wx/wx.h>".}

type 
  WxAccStatus* {.importcpp: "wxAccStatus", header: "<wx/wx.h>".} = object 
  
  WxNavDir* {.importcpp: "wxNavDir", header: "<wx/wx.h>".} = object 
  
  WxAccRole* {.importcpp: "wxAccRole", header: "<wx/wx.h>".} = object 
  
  WxAccSelectionFlags* {.importcpp: "wxAccSelectionFlags", header: "<wx/wx.h>".} = object 
  
  WxWindowAccessible* {.importcpp: "wxWindowAccessible", header: "<wx/wx.h>".} = object of WxAccessible
  

proc constructwxWindowAccessible*(win: ptr WxWindow): WxWindowAccessible {.
    cdecl, constructor, importcpp: "wxWindowAccessible(@)", header: "<wx/wx.h>".}
proc destroywxWindowAccessible*(this: var WxWindowAccessible) {.cdecl, 
    importcpp: "#.~wxWindowAccessible()", header: "<wx/wx.h>".}
proc hitTest*(this: var WxWindowAccessible; pt: WxPoint; childId: ptr cint; 
              childObject: ptr ptr WxAccessible): WxAccStatus {.cdecl, 
    importcpp: "HitTest", header: "<wx/wx.h>".}
proc getLocation*(this: var WxWindowAccessible; rect: var WxRect; 
                  elementId: cint): WxAccStatus {.cdecl, 
    importcpp: "GetLocation", header: "<wx/wx.h>".}
proc navigate*(this: var WxWindowAccessible; navDir: WxNavDir; fromId: cint; 
               toId: ptr cint; toObject: ptr ptr WxAccessible): WxAccStatus {.
    cdecl, importcpp: "Navigate", header: "<wx/wx.h>".}
proc getName*(this: var WxWindowAccessible; childId: cint; name: ptr WxString): WxAccStatus {.
    cdecl, importcpp: "GetName", header: "<wx/wx.h>".}
proc getChildCount*(this: var WxWindowAccessible; childCount: ptr cint): WxAccStatus {.
    cdecl, importcpp: "GetChildCount", header: "<wx/wx.h>".}
proc getChild*(this: var WxWindowAccessible; childId: cint; 
               child: ptr ptr WxAccessible): WxAccStatus {.cdecl, 
    importcpp: "GetChild", header: "<wx/wx.h>".}
proc getParent*(this: var WxWindowAccessible; parent: ptr ptr WxAccessible): WxAccStatus {.
    cdecl, importcpp: "GetParent", header: "<wx/wx.h>".}
proc doDefaultAction*(this: var WxWindowAccessible; childId: cint): WxAccStatus {.
    cdecl, importcpp: "DoDefaultAction", header: "<wx/wx.h>".}
proc getDefaultAction*(this: var WxWindowAccessible; childId: cint; 
                       actionName: ptr WxString): WxAccStatus {.cdecl, 
    importcpp: "GetDefaultAction", header: "<wx/wx.h>".}
proc getDescription*(this: var WxWindowAccessible; childId: cint; 
                     description: ptr WxString): WxAccStatus {.cdecl, 
    importcpp: "GetDescription", header: "<wx/wx.h>".}
proc getHelpText*(this: var WxWindowAccessible; childId: cint; 
                  helpText: ptr WxString): WxAccStatus {.cdecl, 
    importcpp: "GetHelpText", header: "<wx/wx.h>".}
proc getKeyboardShortcut*(this: var WxWindowAccessible; childId: cint; 
                          shortcut: ptr WxString): WxAccStatus {.cdecl, 
    importcpp: "GetKeyboardShortcut", header: "<wx/wx.h>".}
proc getRole*(this: var WxWindowAccessible; childId: cint; role: ptr WxAccRole): WxAccStatus {.
    cdecl, importcpp: "GetRole", header: "<wx/wx.h>".}
proc getState*(this: var WxWindowAccessible; childId: cint; state: ptr clong): WxAccStatus {.
    cdecl, importcpp: "GetState", header: "<wx/wx.h>".}
proc getValue*(this: var WxWindowAccessible; childId: cint; 
               strValue: ptr WxString): WxAccStatus {.cdecl, 
    importcpp: "GetValue", header: "<wx/wx.h>".}
proc select*(this: var WxWindowAccessible; childId: cint; 
             selectFlags: WxAccSelectionFlags): WxAccStatus {.cdecl, 
    importcpp: "Select", header: "<wx/wx.h>".}
proc getFocus*(this: var WxWindowAccessible; childId: ptr cint; 
               child: ptr ptr WxAccessible): WxAccStatus {.cdecl, 
    importcpp: "GetFocus", header: "<wx/wx.h>".}
discard "forward decl of wxControlRenderer"
discard "forward decl of wxEventLoop"
discard "forward decl of wxMenu"
discard "forward decl of wxMenuBar"
discard "forward decl of wxRenderer"
discard "forward decl of wxScrollBar"
const 
  wxUSE_TWO_WINDOWS* = 0


type 
  WxWindow* {.importcpp: "wxWindow", header: "<wx/wx.h>".} = object of WxWindowBase
  

proc constructwxWindow*(): WxWindow {.cdecl, constructor, 
                                      importcpp: "wxWindow(@)", 
                                      header: "<wx/wx.h>".}
proc constructwxWindow*(parent: ptr WxWindow; id: WxWindowID; 
                        pos: WxPoint = wxDefaultPosition; 
                        size: WxSize = wxDefaultSize; style: clong = 0; 
                        name: WxString = constructWxString("panel")): WxWindow {.
    cdecl, constructor, importcpp: "wxWindow(@)", header: "<wx/wx.h>".}
proc create*(this: var WxWindow; parent: ptr WxWindow; id: WxWindowID; 
             pos: WxPoint = wxDefaultPosition; size: WxSize = wxDefaultSize; 
             style: clong = 0; name: WxString = constructWxString("panel")): bool {.
    cdecl, importcpp: "Create", header: "<wx/wx.h>".}
proc destroywxWindow*(this: var WxWindow) {.cdecl, importcpp: "#.~wxWindow()", 
    header: "<wx/wx.h>".}
proc setBackground*(this: var WxWindow; bitmap: WxBitmap; 
                    alignment = wxALIGN_CENTER; 
                    stretch: WxStretch = wxSTRETCH_NOT) {.cdecl, 
    importcpp: "SetBackground", header: "<wx/wx.h>".}
proc getBackgroundBitmap*(this: WxWindow; alignment: ptr WxAlignment = nil; 
                          stretch: ptr WxStretch = nil): WxBitmap {.
    noSideEffect, cdecl, importcpp: "GetBackgroundBitmap", header: "<wx/wx.h>".}
proc setScrollbar*(this: var WxWindow; orient: cint; pos: cint; page: cint; 
                   range: cint; refresh: bool = true) {.cdecl, 
    importcpp: "SetScrollbar", header: "<wx/wx.h>".}
proc setScrollPos*(this: var WxWindow; orient: cint; pos: cint; 
                   refresh: bool = true) {.cdecl, importcpp: "SetScrollPos", 
    header: "<wx/wx.h>".}
proc getScrollPos*(this: WxWindow; orient: cint): cint {.noSideEffect, cdecl, 
    importcpp: "GetScrollPos", header: "<wx/wx.h>".}
proc getScrollThumb*(this: WxWindow; orient: cint): cint {.noSideEffect, cdecl, 
    importcpp: "GetScrollThumb", header: "<wx/wx.h>".}
proc getScrollRange*(this: WxWindow; orient: cint): cint {.noSideEffect, cdecl, 
    importcpp: "GetScrollRange", header: "<wx/wx.h>".}
proc scrollWindow*(this: var WxWindow; dx: cint; dy: cint; 
                   rect: ptr WxRect = nil) {.cdecl, importcpp: "ScrollWindow", 
    header: "<wx/wx.h>".}
proc getClientAreaOrigin*(this: WxWindow): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetClientAreaOrigin", header: "<wx/wx.h>".}
proc dismissPopupMenu*(this: var WxWindow) {.cdecl, 
    importcpp: "DismissPopupMenu", header: "<wx/wx.h>".}
proc isFocused*(this: WxWindow): bool {.noSideEffect, cdecl, 
                                        importcpp: "IsFocused", 
                                        header: "<wx/wx.h>".}
proc isCurrent*(this: WxWindow): bool {.noSideEffect, cdecl, 
                                        importcpp: "IsCurrent", 
                                        header: "<wx/wx.h>".}
proc isPressed*(this: WxWindow): bool {.noSideEffect, cdecl, 
                                        importcpp: "IsPressed", 
                                        header: "<wx/wx.h>".}
proc isDefault*(this: WxWindow): bool {.noSideEffect, cdecl, 
                                        importcpp: "IsDefault", 
                                        header: "<wx/wx.h>".}
proc getStateFlags*(this: WxWindow): cint {.noSideEffect, cdecl, 
    importcpp: "GetStateFlags", header: "<wx/wx.h>".}
proc setCurrent*(this: var WxWindow; doit: bool = true): bool {.cdecl, 
    importcpp: "SetCurrent", header: "<wx/wx.h>".}
proc isCanvasWindow*(this: WxWindow): bool {.noSideEffect, cdecl, 
    importcpp: "IsCanvasWindow", header: "<wx/wx.h>".}
proc canBeHighlighted*(this: WxWindow): bool {.noSideEffect, cdecl, 
    importcpp: "CanBeHighlighted", header: "<wx/wx.h>".}
proc useFgCol*(this: WxWindow): bool {.noSideEffect, cdecl, 
                                       importcpp: "UseFgCol", 
                                       header: "<wx/wx.h>".}
proc useFont*(this: WxWindow): bool {.noSideEffect, cdecl, importcpp: "UseFont", 
                                      header: "<wx/wx.h>".}
proc isStaticBox*(this: WxWindow): bool {.noSideEffect, cdecl, 
    importcpp: "IsStaticBox", header: "<wx/wx.h>".}
proc getRenderer*(this: WxWindow): ptr WxRenderer {.noSideEffect, cdecl, 
    importcpp: "GetRenderer", header: "<wx/wx.h>".}
proc scrollNoRefresh*(this: var WxWindow; dx: cint; dy: cint; 
                      rect: ptr WxRect = nil): WxRect {.cdecl, 
    importcpp: "ScrollNoRefresh", header: "<wx/wx.h>".}
proc refreshScrollbars*(this: var WxWindow) {.cdecl, 
    importcpp: "RefreshScrollbars", header: "<wx/wx.h>".}
proc refresh*(this: var WxWindow; eraseBackground: bool = true; 
              rect: ptr WxRect = nil) {.cdecl, importcpp: "Refresh", 
                                        header: "<wx/wx.h>".}
proc enable*(this: var WxWindow; enable: bool = true): bool {.cdecl, 
    importcpp: "Enable", header: "<wx/wx.h>".}
proc shouldInheritColours*(this: WxWindow): bool {.noSideEffect, cdecl, 
    importcpp: "ShouldInheritColours", header: "<wx/wx.h>".}
proc isClientAreaChild*(this: WxWindow; child: ptr WxWindow): bool {.
    noSideEffect, cdecl, importcpp: "IsClientAreaChild", header: "<wx/wx.h>".}