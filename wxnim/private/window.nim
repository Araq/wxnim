


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
  WxVisualAttributes* {.importcpp: "wxVisualAttributes", header: wxh.} = object 
    font* {.importc: "font".}: WxFont
    colFg* {.importc: "colFg".}: WxColour
    colBg* {.importc: "colBg".}: WxColour



type 
  WxWindowVariant* {.size: sizeof(cint), 
                     importcpp: "wxScrollHelper::wxWindowVariant", header: wxh.} = enum 
    wxWINDOW_VARIANT_NORMAL, wxWINDOW_VARIANT_SMALL, wxWINDOW_VARIANT_MINI, 
    wxWINDOW_VARIANT_LARGE, wxWINDOW_VARIANT_MAX


const 
  wxWINDOW_DEFAULT_VARIANT* = "window-default-variant"


type 
  WxShowEffect* {.size: sizeof(cint), importcpp: "wxScrollHelper::wxShowEffect", 
                  header: wxh.} = enum 
    wxSHOW_EFFECT_NONE, wxSHOW_EFFECT_ROLL_TO_LEFT, wxSHOW_EFFECT_ROLL_TO_RIGHT, 
    wxSHOW_EFFECT_ROLL_TO_TOP, wxSHOW_EFFECT_ROLL_TO_BOTTOM, 
    wxSHOW_EFFECT_SLIDE_TO_LEFT, wxSHOW_EFFECT_SLIDE_TO_RIGHT, 
    wxSHOW_EFFECT_SLIDE_TO_TOP, wxSHOW_EFFECT_SLIDE_TO_BOTTOM, 
    wxSHOW_EFFECT_BLEND, wxSHOW_EFFECT_EXPAND, wxSHOW_EFFECT_MAX



const 
  wxSEND_EVENT_POST* = 1


type 
  WxWindowList* = WxList
  WxAccessible* {.importcpp: "wxAccessible", header: wxh.} = object of WxObject
  
  WxValidator* {.importcpp: "wxValidator", header: wxh.} = object of WxEvtHandler
  
  WxWindowIDRef* {.importcpp: "wxWindowIDRef", header: wxh, inheritable.} = object 
  
  WxDropTarget* {.importcpp: "wxDropTarget", header: wxh, inheritable.} = object 
  
  WxCaret* {.importcpp: "wxCaret", header: wxh, inheritable.} = object 
  
  WxCursor* {.importcpp: "wxCursor", header: wxh.} = object of WxBitmap
  
  WxRegion* {.importcpp: "wxRegion", header: wxh.} = object of WxObject
  
  WxAcceleratorTable* {.importcpp: "wxAcceleratorTable", header: wxh.} = object of WxObject
  
  WxToolTip* {.importcpp: "wxToolTip", header: wxh.} = object of WxObject
  
  WxScrollHelper* {.importcpp: "wxScrollHelper", header: wxh.} = object of WxObject
  
  WxRenderer* {.importcpp: "wxRenderer", header: wxh.} = object of WxObject
  
  WXWidget* = pointer
  WxWindowBase* {.importcpp: "wxWindowBase", header: wxh.} = object of WxEvtHandler
  

proc constructwxWindowBase*(): WxWindowBase {.cdecl, constructor, 
    importcpp: "wxWindowBase(@)", header: wxh.}
proc destroywxWindowBase*(this: var WxWindowBase) {.cdecl, 
    importcpp: "#.~wxWindowBase()", header: wxh.}
proc close*(this: var WxWindowBase; force: bool = false): bool {.cdecl, 
    importcpp: "Close", header: wxh.}
proc destroy*(this: var WxWindowBase): bool {.cdecl, importcpp: "Destroy", 
    header: wxh.}
proc destroyChildren*(this: var WxWindowBase): bool {.cdecl, 
    importcpp: "DestroyChildren", header: wxh.}
proc isBeingDeleted*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsBeingDeleted", header: wxh.}
proc setLabel*(this: var WxWindowBase; label: WxString) {.cdecl, 
    importcpp: "SetLabel", header: wxh.}
proc getLabel*(this: WxWindowBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetLabel", header: wxh.}
proc setName*(this: var WxWindowBase; name: WxString) {.cdecl, 
    importcpp: "SetName", header: wxh.}
proc getName*(this: WxWindowBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetName", header: wxh.}
proc setWindowVariant*(this: var WxWindowBase; variant: WxWindowVariant) {.
    cdecl, importcpp: "SetWindowVariant", header: wxh.}
proc getWindowVariant*(this: WxWindowBase): WxWindowVariant {.noSideEffect, 
    cdecl, importcpp: "GetWindowVariant", header: wxh.}
proc getLayoutDirection*(this: WxWindowBase): WxLayoutDirection {.noSideEffect, 
    cdecl, importcpp: "GetLayoutDirection", header: wxh.}
proc setLayoutDirection*(this: var WxWindowBase; dir: WxLayoutDirection) {.
    cdecl, importcpp: "SetLayoutDirection", header: wxh.}
proc adjustForLayoutDirection*(this: WxWindowBase; x: WxCoord; width: WxCoord; 
                               widthTotal: WxCoord): WxCoord {.noSideEffect, 
    cdecl, importcpp: "AdjustForLayoutDirection", header: wxh.}
proc setId*(this: var WxWindowBase; winid: WxWindowID) {.cdecl, 
    importcpp: "SetId", header: wxh.}
proc getId*(this: WxWindowBase): WxWindowID {.noSideEffect, cdecl, 
    importcpp: "GetId", header: wxh.}
proc newControlId*(count: cint = 1): WxWindowID {.cdecl, 
    importcpp: "wxWindowBase::NewControlId(@)", header: wxh.}
proc unreserveControlId*(id: WxWindowID; count: cint = 1) {.cdecl, 
    importcpp: "wxWindowBase::UnreserveControlId(@)", header: wxh.}
proc setSize*(this: var WxWindowBase; x: cint; y: cint; width: cint; 
              height: cint; sizeFlags: cint = wxSIZE_AUTO) {.cdecl, 
    importcpp: "SetSize", header: wxh.}
proc setSize*(this: var WxWindowBase; width: cint; height: cint) {.cdecl, 
    importcpp: "SetSize", header: wxh.}
proc setSize*(this: var WxWindowBase; size: WxSize) {.cdecl, 
    importcpp: "SetSize", header: wxh.}
proc setSize*(this: var WxWindowBase; rect: WxRect; 
              sizeFlags: cint = wxSIZE_AUTO) {.cdecl, importcpp: "SetSize", 
    header: wxh.}
proc move*(this: var WxWindowBase; x: cint; y: cint; 
           flags: cint = wxSIZE_USE_EXISTING) {.cdecl, importcpp: "Move", 
    header: wxh.}
proc move*(this: var WxWindowBase; pt: WxPoint; 
           flags: cint = wxSIZE_USE_EXISTING) {.cdecl, importcpp: "Move", 
    header: wxh.}
proc setPosition*(this: var WxWindowBase; pt: WxPoint) {.cdecl, 
    importcpp: "SetPosition", header: wxh.}
proc `raise`*(this: var WxWindowBase) {.cdecl, importcpp: "Raise", header: wxh.}
proc lower*(this: var WxWindowBase) {.cdecl, importcpp: "Lower", header: wxh.}
proc setClientSize*(this: var WxWindowBase; width: cint; height: cint) {.cdecl, 
    importcpp: "SetClientSize", header: wxh.}
proc setClientSize*(this: var WxWindowBase; size: WxSize) {.cdecl, 
    importcpp: "SetClientSize", header: wxh.}
proc setClientSize*(this: var WxWindowBase; rect: WxRect) {.cdecl, 
    importcpp: "SetClientSize", header: wxh.}
proc getPosition*(this: WxWindowBase; x: ptr cint; y: ptr cint) {.noSideEffect, 
    cdecl, importcpp: "GetPosition", header: wxh.}
proc getPosition*(this: WxWindowBase): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetPosition", header: wxh.}
proc getScreenPosition*(this: WxWindowBase; x: ptr cint; y: ptr cint) {.
    noSideEffect, cdecl, importcpp: "GetScreenPosition", header: wxh.}
proc getScreenPosition*(this: WxWindowBase): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetScreenPosition", header: wxh.}
proc getSize*(this: WxWindowBase; w: ptr cint; h: ptr cint) {.noSideEffect, 
    cdecl, importcpp: "GetSize", header: wxh.}
proc getSize*(this: WxWindowBase): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetSize", header: wxh.}
proc getClientSize*(this: WxWindowBase; w: ptr cint; h: ptr cint) {.
    noSideEffect, cdecl, importcpp: "GetClientSize", header: wxh.}
proc getClientSize*(this: WxWindowBase): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetClientSize", header: wxh.}
proc getRect*(this: WxWindowBase): WxRect {.noSideEffect, cdecl, 
    importcpp: "GetRect", header: wxh.}
proc getScreenRect*(this: WxWindowBase): WxRect {.noSideEffect, cdecl, 
    importcpp: "GetScreenRect", header: wxh.}
proc getClientAreaOrigin*(this: WxWindowBase): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetClientAreaOrigin", header: wxh.}
proc getClientRect*(this: WxWindowBase): WxRect {.noSideEffect, cdecl, 
    importcpp: "GetClientRect", header: wxh.}
proc clientToWindowSize*(this: WxWindowBase; size: WxSize): WxSize {.
    noSideEffect, cdecl, importcpp: "ClientToWindowSize", header: wxh.}
proc windowToClientSize*(this: WxWindowBase; size: WxSize): WxSize {.
    noSideEffect, cdecl, importcpp: "WindowToClientSize", header: wxh.}
proc getBestSize*(this: WxWindowBase): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetBestSize", header: wxh.}
proc getBestSize*(this: WxWindowBase; w: ptr cint; h: ptr cint) {.noSideEffect, 
    cdecl, importcpp: "GetBestSize", header: wxh.}
proc getBestHeight*(this: WxWindowBase; width: cint): cint {.noSideEffect, 
    cdecl, importcpp: "GetBestHeight", header: wxh.}
proc getBestWidth*(this: WxWindowBase; height: cint): cint {.noSideEffect, 
    cdecl, importcpp: "GetBestWidth", header: wxh.}
proc setScrollHelper*(this: var WxWindowBase; sh: ptr WxScrollHelper) {.cdecl, 
    importcpp: "SetScrollHelper", header: wxh.}
proc getScrollHelper*(this: var WxWindowBase): ptr WxScrollHelper {.cdecl, 
    importcpp: "GetScrollHelper", header: wxh.}
proc invalidateBestSize*(this: var WxWindowBase) {.cdecl, 
    importcpp: "InvalidateBestSize", header: wxh.}
proc cacheBestSize*(this: WxWindowBase; size: WxSize) {.noSideEffect, cdecl, 
    importcpp: "CacheBestSize", header: wxh.}
proc getEffectiveMinSize*(this: WxWindowBase): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetEffectiveMinSize", header: wxh.}
proc getBestFittingSize*(this: WxWindowBase): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetBestFittingSize", header: wxh.}
proc getAdjustedMinSize*(this: WxWindowBase): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetAdjustedMinSize", header: wxh.}
proc setInitialSize*(this: var WxWindowBase; size: WxSize = wxDefaultSize) {.
    cdecl, importcpp: "SetInitialSize", header: wxh.}
proc setBestFittingSize*(this: var WxWindowBase; size: WxSize = wxDefaultSize) {.
    cdecl, importcpp: "SetBestFittingSize", header: wxh.}
proc centre*(this: var WxWindowBase; dir = wxBOTH) {.cdecl, importcpp: "Centre", 
    header: wxh.}
proc center*(this: var WxWindowBase; dir = wxBOTH) {.cdecl, importcpp: "Center", 
    header: wxh.}
proc centreOnParent*(this: var WxWindowBase; dir = wxBOTH) {.cdecl, 
    importcpp: "CentreOnParent", header: wxh.}
proc centerOnParent*(this: var WxWindowBase; dir = wxBOTH) {.cdecl, 
    importcpp: "CenterOnParent", header: wxh.}
proc fit*(this: var WxWindowBase) {.cdecl, importcpp: "Fit", header: wxh.}
proc fitInside*(this: var WxWindowBase) {.cdecl, importcpp: "FitInside", 
    header: wxh.}
proc setSizeHints*(this: var WxWindowBase; minW: cint; minH: cint; 
                   maxW: cint = wxDefaultCoord; maxH: cint = wxDefaultCoord; 
                   incW: cint = wxDefaultCoord; incH: cint = wxDefaultCoord) {.
    cdecl, importcpp: "SetSizeHints", header: wxh.}
proc setSizeHints*(this: var WxWindowBase; minSize: WxSize; 
                   maxSize: WxSize = wxDefaultSize; 
                   incSize: WxSize = wxDefaultSize) {.cdecl, 
    importcpp: "SetSizeHints", header: wxh.}
proc setMinSize*(this: var WxWindowBase; minSize: WxSize) {.cdecl, 
    importcpp: "SetMinSize", header: wxh.}
proc setMaxSize*(this: var WxWindowBase; maxSize: WxSize) {.cdecl, 
    importcpp: "SetMaxSize", header: wxh.}
proc setMinClientSize*(this: var WxWindowBase; size: WxSize) {.cdecl, 
    importcpp: "SetMinClientSize", header: wxh.}
proc setMaxClientSize*(this: var WxWindowBase; size: WxSize) {.cdecl, 
    importcpp: "SetMaxClientSize", header: wxh.}
proc getMinSize*(this: WxWindowBase): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetMinSize", header: wxh.}
proc getMaxSize*(this: WxWindowBase): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetMaxSize", header: wxh.}
proc getMinClientSize*(this: WxWindowBase): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetMinClientSize", header: wxh.}
proc getMaxClientSize*(this: WxWindowBase): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetMaxClientSize", header: wxh.}
proc getMinWidth*(this: WxWindowBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetMinWidth", header: wxh.}
proc getMinHeight*(this: WxWindowBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetMinHeight", header: wxh.}
proc getMaxWidth*(this: WxWindowBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetMaxWidth", header: wxh.}
proc getMaxHeight*(this: WxWindowBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetMaxHeight", header: wxh.}
proc setVirtualSize*(this: var WxWindowBase; size: WxSize) {.cdecl, 
    importcpp: "SetVirtualSize", header: wxh.}
proc setVirtualSize*(this: var WxWindowBase; x: cint; y: cint) {.cdecl, 
    importcpp: "SetVirtualSize", header: wxh.}
proc getVirtualSize*(this: WxWindowBase): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetVirtualSize", header: wxh.}
proc getVirtualSize*(this: WxWindowBase; x: ptr cint; y: ptr cint) {.
    noSideEffect, cdecl, importcpp: "GetVirtualSize", header: wxh.}
proc doSetVirtualSize*(this: var WxWindowBase; x: cint; y: cint) {.cdecl, 
    importcpp: "DoSetVirtualSize", header: wxh.}
proc doGetVirtualSize*(this: WxWindowBase): WxSize {.noSideEffect, cdecl, 
    importcpp: "DoGetVirtualSize", header: wxh.}
proc getBestVirtualSize*(this: WxWindowBase): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetBestVirtualSize", header: wxh.}
proc getContentScaleFactor*(this: WxWindowBase): cdouble {.noSideEffect, cdecl, 
    importcpp: "GetContentScaleFactor", header: wxh.}
proc getWindowBorderSize*(this: WxWindowBase): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetWindowBorderSize", header: wxh.}
proc informFirstDirection*(this: var WxWindowBase; direction: cint; size: cint; 
                           availableOtherDir: cint): bool {.cdecl, 
    importcpp: "InformFirstDirection", header: wxh.}
proc sendSizeEvent*(this: var WxWindowBase; flags: cint = 0) {.cdecl, 
    importcpp: "SendSizeEvent", header: wxh.}
proc sendSizeEventToParent*(this: var WxWindowBase; flags: cint = 0) {.cdecl, 
    importcpp: "SendSizeEventToParent", header: wxh.}
proc postSizeEvent*(this: var WxWindowBase) {.cdecl, importcpp: "PostSizeEvent", 
    header: wxh.}
proc postSizeEventToParent*(this: var WxWindowBase) {.cdecl, 
    importcpp: "PostSizeEventToParent", header: wxh.}
proc beginRepositioningChildren*(this: var WxWindowBase): bool {.cdecl, 
    importcpp: "BeginRepositioningChildren", header: wxh.}
proc endRepositioningChildren*(this: var WxWindowBase) {.cdecl, 
    importcpp: "EndRepositioningChildren", header: wxh.}
type 
  ChildrenRepositioningGuard* {.importcpp: "ChildrenRepositioningGuard", 
                                header: wxh.} = object 
  

proc constructChildrenRepositioningGuard*(win: ptr WxWindowBase): ChildrenRepositioningGuard {.
    cdecl, constructor, importcpp: "ChildrenRepositioningGuard(@)", header: wxh.}
proc destroyChildrenRepositioningGuard*(this: var ChildrenRepositioningGuard) {.
    cdecl, importcpp: "#.~ChildrenRepositioningGuard()", header: wxh.}
proc show*(this: var WxWindowBase; show: bool = true): bool {.discardable, 
    cdecl, importcpp: "Show", header: wxh.}
proc hide*(this: var WxWindowBase): bool {.cdecl, importcpp: "Hide", header: wxh.}
proc showWithEffect*(this: var WxWindowBase; effect: WxShowEffect; 
                     timeout: cuint = 0): bool {.discardable, cdecl, 
    importcpp: "ShowWithEffect", header: wxh.}
proc hideWithEffect*(this: var WxWindowBase; effect: WxShowEffect; 
                     timeout: cuint = 0): bool {.cdecl, 
    importcpp: "HideWithEffect", header: wxh.}
proc enable*(this: var WxWindowBase; enable: bool = true): bool {.cdecl, 
    importcpp: "Enable", header: wxh.}
proc disable*(this: var WxWindowBase): bool {.cdecl, importcpp: "Disable", 
    header: wxh.}
proc isShown*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsShown", header: wxh.}
proc isEnabled*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsEnabled", header: wxh.}
proc isThisEnabled*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsThisEnabled", header: wxh.}
proc isShownOnScreen*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsShownOnScreen", header: wxh.}
proc setWindowStyleFlag*(this: var WxWindowBase; style: clong) {.cdecl, 
    importcpp: "SetWindowStyleFlag", header: wxh.}
proc getWindowStyleFlag*(this: WxWindowBase): clong {.noSideEffect, cdecl, 
    importcpp: "GetWindowStyleFlag", header: wxh.}
proc setWindowStyle*(this: var WxWindowBase; style: clong) {.cdecl, 
    importcpp: "SetWindowStyle", header: wxh.}
proc getWindowStyle*(this: WxWindowBase): clong {.noSideEffect, cdecl, 
    importcpp: "GetWindowStyle", header: wxh.}
proc hasFlag*(this: WxWindowBase; flag: cint): bool {.noSideEffect, cdecl, 
    importcpp: "HasFlag", header: wxh.}
proc isRetained*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsRetained", header: wxh.}
proc toggleWindowStyle*(this: var WxWindowBase; flag: cint): bool {.cdecl, 
    importcpp: "ToggleWindowStyle", header: wxh.}
proc setExtraStyle*(this: var WxWindowBase; exStyle: clong) {.cdecl, 
    importcpp: "SetExtraStyle", header: wxh.}
proc getExtraStyle*(this: WxWindowBase): clong {.noSideEffect, cdecl, 
    importcpp: "GetExtraStyle", header: wxh.}
proc hasExtraStyle*(this: WxWindowBase; exFlag: cint): bool {.noSideEffect, 
    cdecl, importcpp: "HasExtraStyle", header: wxh.}
proc setThemeEnabled*(this: var WxWindowBase; enableTheme: bool) {.cdecl, 
    importcpp: "SetThemeEnabled", header: wxh.}
proc getThemeEnabled*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "GetThemeEnabled", header: wxh.}
proc setFocus*(this: var WxWindowBase) {.cdecl, importcpp: "SetFocus", 
    header: wxh.}
proc setFocusFromKbd*(this: var WxWindowBase) {.cdecl, 
    importcpp: "SetFocusFromKbd", header: wxh.}
proc findFocus*(): ptr WxWindow {.cdecl, 
                                  importcpp: "wxWindowBase::FindFocus(@)", 
                                  header: wxh.}
proc doFindFocus*(): ptr WxWindow {.cdecl, 
                                    importcpp: "wxWindowBase::DoFindFocus(@)", 
                                    header: wxh.}
proc hasFocus*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "HasFocus", header: wxh.}
proc acceptsFocus*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "AcceptsFocus", header: wxh.}
proc acceptsFocusRecursively*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "AcceptsFocusRecursively", header: wxh.}
proc acceptsFocusFromKeyboard*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "AcceptsFocusFromKeyboard", header: wxh.}
proc canBeFocused*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "CanBeFocused", header: wxh.}
proc isFocusable*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsFocusable", header: wxh.}
proc canAcceptFocus*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "CanAcceptFocus", header: wxh.}
proc canAcceptFocusFromKeyboard*(this: WxWindowBase): bool {.noSideEffect, 
    cdecl, importcpp: "CanAcceptFocusFromKeyboard", header: wxh.}
proc setCanFocus*(this: var WxWindowBase; canFocus: bool) {.cdecl, 
    importcpp: "SetCanFocus", header: wxh.}
proc navigateIn*(this: var WxWindowBase; flags: cint = isForward): bool {.cdecl, 
    importcpp: "NavigateIn", header: wxh.}
proc navigate*(this: var WxWindowBase; flags: cint = isForward): bool {.cdecl, 
    importcpp: "Navigate", header: wxh.}
proc handleAsNavigationKey*(this: var WxWindowBase; event: WxKeyEvent): bool {.
    cdecl, importcpp: "HandleAsNavigationKey", header: wxh.}
proc moveBeforeInTabOrder*(this: var WxWindowBase; win: ptr WxWindow) {.cdecl, 
    importcpp: "MoveBeforeInTabOrder", header: wxh.}
proc moveAfterInTabOrder*(this: var WxWindowBase; win: ptr WxWindow) {.cdecl, 
    importcpp: "MoveAfterInTabOrder", header: wxh.}
proc getChildren*(this: WxWindowBase): WxWindowList {.noSideEffect, cdecl, 
    importcpp: "GetChildren", header: wxh.}
proc getChildren*(this: var WxWindowBase): var WxWindowList {.cdecl, 
    importcpp: "GetChildren", header: wxh.}
proc getWindowChildren*(this: WxWindowBase): WxWindowList {.noSideEffect, cdecl, 
    importcpp: "GetWindowChildren", header: wxh.}
proc getPrevSibling*(this: WxWindowBase): ptr WxWindow {.noSideEffect, cdecl, 
    importcpp: "GetPrevSibling", header: wxh.}
proc getNextSibling*(this: WxWindowBase): ptr WxWindow {.noSideEffect, cdecl, 
    importcpp: "GetNextSibling", header: wxh.}
proc getParent*(this: WxWindowBase): ptr WxWindow {.noSideEffect, cdecl, 
    importcpp: "GetParent", header: wxh.}
proc getGrandParent*(this: WxWindowBase): ptr WxWindow {.noSideEffect, cdecl, 
    importcpp: "GetGrandParent", header: wxh.}
proc isTopLevel*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsTopLevel", header: wxh.}
proc isDescendant*(this: WxWindowBase; win: ptr WxWindowBase): bool {.
    noSideEffect, cdecl, importcpp: "IsDescendant", header: wxh.}
proc setParent*(this: var WxWindowBase; parent: ptr WxWindowBase) {.cdecl, 
    importcpp: "SetParent", header: wxh.}
proc reparent*(this: var WxWindowBase; newParent: ptr WxWindowBase): bool {.
    cdecl, importcpp: "Reparent", header: wxh.}
proc addChild*(this: var WxWindowBase; child: ptr WxWindowBase) {.cdecl, 
    importcpp: "AddChild", header: wxh.}
proc removeChild*(this: var WxWindowBase; child: ptr WxWindowBase) {.cdecl, 
    importcpp: "RemoveChild", header: wxh.}
proc isClientAreaChild*(this: WxWindowBase; child: ptr WxWindow): bool {.
    noSideEffect, cdecl, importcpp: "IsClientAreaChild", header: wxh.}
proc findWindow*(this: WxWindowBase; winid: clong): ptr WxWindow {.noSideEffect, 
    cdecl, importcpp: "FindWindow", header: wxh.}
proc findWindow*(this: WxWindowBase; name: WxString): ptr WxWindow {.
    noSideEffect, cdecl, importcpp: "FindWindow", header: wxh.}
proc findWindowById*(winid: clong; parent: ptr WxWindow = nil): ptr WxWindow {.
    cdecl, importcpp: "wxWindowBase::FindWindowById(@)", header: wxh.}
proc findWindowByName*(name: WxString; parent: ptr WxWindow = nil): ptr WxWindow {.
    cdecl, importcpp: "wxWindowBase::FindWindowByName(@)", header: wxh.}
proc findWindowByLabel*(label: WxString; parent: ptr WxWindow = nil): ptr WxWindow {.
    cdecl, importcpp: "wxWindowBase::FindWindowByLabel(@)", header: wxh.}
proc getEventHandler*(this: WxWindowBase): ptr WxEvtHandler {.noSideEffect, 
    cdecl, importcpp: "GetEventHandler", header: wxh.}
proc setEventHandler*(this: var WxWindowBase; handler: ptr WxEvtHandler) {.
    cdecl, importcpp: "SetEventHandler", header: wxh.}
proc pushEventHandler*(this: var WxWindowBase; handler: ptr WxEvtHandler) {.
    cdecl, importcpp: "PushEventHandler", header: wxh.}
proc popEventHandler*(this: var WxWindowBase; deleteHandler: bool = false): ptr WxEvtHandler {.
    cdecl, importcpp: "PopEventHandler", header: wxh.}
proc removeEventHandler*(this: var WxWindowBase; handler: ptr WxEvtHandler): bool {.
    cdecl, importcpp: "RemoveEventHandler", header: wxh.}
proc processWindowEvent*(this: var WxWindowBase; event: var WxEvent): bool {.
    cdecl, importcpp: "ProcessWindowEvent", header: wxh.}
proc processWindowEventLocally*(this: var WxWindowBase; event: var WxEvent): bool {.
    cdecl, importcpp: "ProcessWindowEventLocally", header: wxh.}
proc handleWindowEvent*(this: WxWindowBase; event: var WxEvent): bool {.
    noSideEffect, cdecl, importcpp: "HandleWindowEvent", header: wxh.}
proc setNextHandler*(this: var WxWindowBase; handler: ptr WxEvtHandler) {.cdecl, 
    importcpp: "SetNextHandler", header: wxh.}
proc setPreviousHandler*(this: var WxWindowBase; handler: ptr WxEvtHandler) {.
    cdecl, importcpp: "SetPreviousHandler", header: wxh.}
proc setValidator*(this: var WxWindowBase; validator: WxValidator) {.cdecl, 
    importcpp: "SetValidator", header: wxh.}
proc getValidator*(this: var WxWindowBase): ptr WxValidator {.cdecl, 
    importcpp: "GetValidator", header: wxh.}
proc validate*(this: var WxWindowBase): bool {.cdecl, importcpp: "Validate", 
    header: wxh.}
proc transferDataToWindow*(this: var WxWindowBase): bool {.cdecl, 
    importcpp: "TransferDataToWindow", header: wxh.}
proc transferDataFromWindow*(this: var WxWindowBase): bool {.cdecl, 
    importcpp: "TransferDataFromWindow", header: wxh.}
proc initDialog*(this: var WxWindowBase) {.cdecl, importcpp: "InitDialog", 
    header: wxh.}
proc setAcceleratorTable*(this: var WxWindowBase; accel: WxAcceleratorTable) {.
    cdecl, importcpp: "SetAcceleratorTable", header: wxh.}
proc getAcceleratorTable*(this: var WxWindowBase): ptr WxAcceleratorTable {.
    cdecl, importcpp: "GetAcceleratorTable", header: wxh.}
proc registerHotKey*(this: var WxWindowBase; hotkeyId: cint; modifiers: cint; 
                     keycode: cint): bool {.cdecl, importcpp: "RegisterHotKey", 
    header: wxh.}
proc unregisterHotKey*(this: var WxWindowBase; hotkeyId: cint): bool {.cdecl, 
    importcpp: "UnregisterHotKey", header: wxh.}
proc convertPixelsToDialog*(this: WxWindowBase; pt: WxPoint): WxPoint {.
    noSideEffect, cdecl, importcpp: "ConvertPixelsToDialog", header: wxh.}
proc convertDialogToPixels*(this: WxWindowBase; pt: WxPoint): WxPoint {.
    noSideEffect, cdecl, importcpp: "ConvertDialogToPixels", header: wxh.}
proc convertPixelsToDialog*(this: WxWindowBase; sz: WxSize): WxSize {.
    noSideEffect, cdecl, importcpp: "ConvertPixelsToDialog", header: wxh.}
proc convertDialogToPixels*(this: WxWindowBase; sz: WxSize): WxSize {.
    noSideEffect, cdecl, importcpp: "ConvertDialogToPixels", header: wxh.}
proc warpPointer*(this: var WxWindowBase; x: cint; y: cint) {.cdecl, 
    importcpp: "WarpPointer", header: wxh.}
proc captureMouse*(this: var WxWindowBase) {.cdecl, importcpp: "CaptureMouse", 
    header: wxh.}
proc releaseMouse*(this: var WxWindowBase) {.cdecl, importcpp: "ReleaseMouse", 
    header: wxh.}
proc getCapture*(): ptr WxWindow {.cdecl, 
                                   importcpp: "wxWindowBase::GetCapture(@)", 
                                   header: wxh.}
proc hasCapture*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "HasCapture", header: wxh.}
proc refresh*(this: var WxWindowBase; eraseBackground: bool = true; 
              rect: ptr WxRect = nil) {.cdecl, importcpp: "Refresh", header: wxh.}
proc refreshRect*(this: var WxWindowBase; rect: WxRect; 
                  eraseBackground: bool = true) {.cdecl, 
    importcpp: "RefreshRect", header: wxh.}
proc update*(this: var WxWindowBase) {.cdecl, importcpp: "Update", header: wxh.}
proc clearBackground*(this: var WxWindowBase) {.cdecl, 
    importcpp: "ClearBackground", header: wxh.}
proc freeze*(this: var WxWindowBase) {.cdecl, importcpp: "Freeze", header: wxh.}
proc thaw*(this: var WxWindowBase) {.cdecl, importcpp: "Thaw", header: wxh.}
proc isFrozen*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsFrozen", header: wxh.}
proc isDoubleBuffered*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsDoubleBuffered", header: wxh.}
proc getUpdateRegion*(this: WxWindowBase): WxRegion {.noSideEffect, cdecl, 
    importcpp: "GetUpdateRegion", header: wxh.}
proc getUpdateRegion*(this: var WxWindowBase): var WxRegion {.cdecl, 
    importcpp: "GetUpdateRegion", header: wxh.}
proc getUpdateClientRect*(this: WxWindowBase): WxRect {.noSideEffect, cdecl, 
    importcpp: "GetUpdateClientRect", header: wxh.}
proc doIsExposed*(this: WxWindowBase; x: cint; y: cint): bool {.noSideEffect, 
    cdecl, importcpp: "DoIsExposed", header: wxh.}
proc doIsExposed*(this: WxWindowBase; x: cint; y: cint; w: cint; h: cint): bool {.
    noSideEffect, cdecl, importcpp: "DoIsExposed", header: wxh.}
proc isExposed*(this: WxWindowBase; x: cint; y: cint): bool {.noSideEffect, 
    cdecl, importcpp: "IsExposed", header: wxh.}
proc isExposed*(this: WxWindowBase; x: cint; y: cint; w: cint; h: cint): bool {.
    noSideEffect, cdecl, importcpp: "IsExposed", header: wxh.}
proc isExposed*(this: WxWindowBase; pt: WxPoint): bool {.noSideEffect, cdecl, 
    importcpp: "IsExposed", header: wxh.}
proc isExposed*(this: WxWindowBase; rect: WxRect): bool {.noSideEffect, cdecl, 
    importcpp: "IsExposed", header: wxh.}
proc getDefaultAttributes*(this: WxWindowBase): WxVisualAttributes {.
    noSideEffect, cdecl, importcpp: "GetDefaultAttributes", header: wxh.}
proc getClassDefaultAttributes*(variant: WxWindowVariant = wxWINDOW_VARIANT_NORMAL): WxVisualAttributes {.
    cdecl, importcpp: "wxWindowBase::GetClassDefaultAttributes(@)", header: wxh.}
proc setBackgroundColour*(this: var WxWindowBase; colour: WxColour): bool {.
    discardable, cdecl, importcpp: "SetBackgroundColour", header: wxh.}
proc setOwnBackgroundColour*(this: var WxWindowBase; colour: WxColour) {.cdecl, 
    importcpp: "SetOwnBackgroundColour", header: wxh.}
proc getBackgroundColour*(this: WxWindowBase): WxColour {.noSideEffect, cdecl, 
    importcpp: "GetBackgroundColour", header: wxh.}
proc inheritsBackgroundColour*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "InheritsBackgroundColour", header: wxh.}
proc useBgCol*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "UseBgCol", header: wxh.}
proc setForegroundColour*(this: var WxWindowBase; colour: WxColour): bool {.
    discardable, cdecl, importcpp: "SetForegroundColour", header: wxh.}
proc setOwnForegroundColour*(this: var WxWindowBase; colour: WxColour) {.cdecl, 
    importcpp: "SetOwnForegroundColour", header: wxh.}
proc getForegroundColour*(this: WxWindowBase): WxColour {.noSideEffect, cdecl, 
    importcpp: "GetForegroundColour", header: wxh.}
proc setBackgroundStyle*(this: var WxWindowBase; style: WxBackgroundStyle): bool {.
    discardable, cdecl, importcpp: "SetBackgroundStyle", header: wxh.}
proc getBackgroundStyle*(this: WxWindowBase): WxBackgroundStyle {.noSideEffect, 
    cdecl, importcpp: "GetBackgroundStyle", header: wxh.}
proc hasTransparentBackground*(this: var WxWindowBase): bool {.cdecl, 
    importcpp: "HasTransparentBackground", header: wxh.}
proc isTransparentBackgroundSupported*(this: WxWindowBase; 
                                       reason: ptr WxString = nil): bool {.
    noSideEffect, cdecl, importcpp: "IsTransparentBackgroundSupported", 
    header: wxh.}
proc setFont*(this: var WxWindowBase; font: WxFont): bool {.discardable, cdecl, 
    importcpp: "SetFont", header: wxh.}
proc setOwnFont*(this: var WxWindowBase; font: WxFont) {.cdecl, 
    importcpp: "SetOwnFont", header: wxh.}
proc getFont*(this: WxWindowBase): WxFont {.noSideEffect, cdecl, 
    importcpp: "GetFont", header: wxh.}
proc setCursor*(this: var WxWindowBase; cursor: WxCursor): bool {.discardable, 
    cdecl, importcpp: "SetCursor", header: wxh.}
proc getCursor*(this: WxWindowBase): WxCursor {.noSideEffect, cdecl, 
    importcpp: "GetCursor", header: wxh.}
proc setCaret*(this: var WxWindowBase; caret: ptr WxCaret) {.cdecl, 
    importcpp: "SetCaret", header: wxh.}
proc getCaret*(this: WxWindowBase): ptr WxCaret {.noSideEffect, cdecl, 
    importcpp: "GetCaret", header: wxh.}
proc getCharHeight*(this: WxWindowBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetCharHeight", header: wxh.}
proc getCharWidth*(this: WxWindowBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetCharWidth", header: wxh.}
proc getTextExtent*(this: WxWindowBase; string: WxString; x: ptr cint; 
                    y: ptr cint; descent: ptr cint = nil; 
                    externalLeading: ptr cint = nil; font: ptr WxFont = nil) {.
    noSideEffect, cdecl, importcpp: "GetTextExtent", header: wxh.}
proc getTextExtent*(this: WxWindowBase; string: WxString): WxSize {.
    noSideEffect, cdecl, importcpp: "GetTextExtent", header: wxh.}
proc clientToScreen*(this: WxWindowBase; x: ptr cint; y: ptr cint) {.
    noSideEffect, cdecl, importcpp: "ClientToScreen", header: wxh.}
proc screenToClient*(this: WxWindowBase; x: ptr cint; y: ptr cint) {.
    noSideEffect, cdecl, importcpp: "ScreenToClient", header: wxh.}
proc clientToScreen*(this: WxWindowBase; pt: WxPoint): WxPoint {.noSideEffect, 
    cdecl, importcpp: "ClientToScreen", header: wxh.}
proc screenToClient*(this: WxWindowBase; pt: WxPoint): WxPoint {.noSideEffect, 
    cdecl, importcpp: "ScreenToClient", header: wxh.}
proc hitTest*(this: WxWindowBase; x: WxCoord; y: WxCoord): WxHitTest {.
    noSideEffect, cdecl, importcpp: "HitTest", header: wxh.}
proc hitTest*(this: WxWindowBase; pt: WxPoint): WxHitTest {.noSideEffect, cdecl, 
    importcpp: "HitTest", header: wxh.}
proc getBorder*(this: WxWindowBase; flags: clong): WxBorder {.noSideEffect, 
    cdecl, importcpp: "GetBorder", header: wxh.}
proc getBorder*(this: WxWindowBase): WxBorder {.noSideEffect, cdecl, 
    importcpp: "GetBorder", header: wxh.}
proc updateWindowUI*(this: var WxWindowBase; flags = wxUPDATE_UI_NONE) {.cdecl, 
    importcpp: "UpdateWindowUI", header: wxh.}
proc doUpdateWindowUI*(this: var WxWindowBase; event: var WxUpdateUIEvent) {.
    cdecl, importcpp: "DoUpdateWindowUI", header: wxh.}
proc popupMenu*(this: var WxWindowBase; menu: ptr WxMenu; 
                pos: WxPoint = wxDefaultPosition): bool {.cdecl, 
    importcpp: "PopupMenu", header: wxh.}
proc popupMenu*(this: var WxWindowBase; menu: ptr WxMenu; x: cint; y: cint): bool {.
    cdecl, importcpp: "PopupMenu", header: wxh.}
proc getPopupMenuSelectionFromUser*(this: var WxWindowBase; menu: var WxMenu; 
                                    pos: WxPoint = wxDefaultPosition): cint {.
    cdecl, importcpp: "GetPopupMenuSelectionFromUser", header: wxh.}
proc getPopupMenuSelectionFromUser*(this: var WxWindowBase; menu: var WxMenu; 
                                    x: cint; y: cint): cint {.cdecl, 
    importcpp: "GetPopupMenuSelectionFromUser", header: wxh.}
proc hasMultiplePages*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "HasMultiplePages", header: wxh.}
proc canScroll*(this: WxWindowBase; orient: cint): bool {.noSideEffect, cdecl, 
    importcpp: "CanScroll", header: wxh.}
proc hasScrollbar*(this: WxWindowBase; orient: cint): bool {.noSideEffect, 
    cdecl, importcpp: "HasScrollbar", header: wxh.}
proc setScrollbar*(this: var WxWindowBase; orient: cint; pos: cint; 
                   thumbvisible: cint; range: cint; refresh: bool = true) {.
    cdecl, importcpp: "SetScrollbar", header: wxh.}
proc setScrollPos*(this: var WxWindowBase; orient: cint; pos: cint; 
                   refresh: bool = true) {.cdecl, importcpp: "SetScrollPos", 
    header: wxh.}
proc getScrollPos*(this: WxWindowBase; orient: cint): cint {.noSideEffect, 
    cdecl, importcpp: "GetScrollPos", header: wxh.}
proc getScrollThumb*(this: WxWindowBase; orient: cint): cint {.noSideEffect, 
    cdecl, importcpp: "GetScrollThumb", header: wxh.}
proc getScrollRange*(this: WxWindowBase; orient: cint): cint {.noSideEffect, 
    cdecl, importcpp: "GetScrollRange", header: wxh.}
proc scrollWindow*(this: var WxWindowBase; dx: cint; dy: cint; 
                   rect: ptr WxRect = nil) {.cdecl, importcpp: "ScrollWindow", 
    header: wxh.}
proc scrollLines*(this: var WxWindowBase; lines: cint): bool {.cdecl, 
    importcpp: "ScrollLines", header: wxh.}
proc scrollPages*(this: var WxWindowBase; pages: cint): bool {.cdecl, 
    importcpp: "ScrollPages", header: wxh.}
proc lineUp*(this: var WxWindowBase): bool {.cdecl, importcpp: "LineUp", 
    header: wxh.}
proc lineDown*(this: var WxWindowBase): bool {.cdecl, importcpp: "LineDown", 
    header: wxh.}
proc pageUp*(this: var WxWindowBase): bool {.cdecl, importcpp: "PageUp", 
    header: wxh.}
proc pageDown*(this: var WxWindowBase): bool {.cdecl, importcpp: "PageDown", 
    header: wxh.}
proc alwaysShowScrollbars*(this: var WxWindowBase; horz: bool = true; 
                           vert: bool = true) {.cdecl, 
    importcpp: "AlwaysShowScrollbars", header: wxh.}
proc isScrollbarAlwaysShown*(this: WxWindowBase; orient: cint): bool {.
    noSideEffect, cdecl, importcpp: "IsScrollbarAlwaysShown", header: wxh.}
proc setHelpText*(this: var WxWindowBase; text: WxString) {.cdecl, 
    importcpp: "SetHelpText", header: wxh.}
proc getHelpTextAtPoint*(this: WxWindowBase; pt: WxPoint; origin: Origin): WxString {.
    noSideEffect, cdecl, importcpp: "GetHelpTextAtPoint", header: wxh.}
proc getHelpText*(this: WxWindowBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetHelpText", header: wxh.}
proc setToolTip*(this: var WxWindowBase; tip: WxString) {.cdecl, 
    importcpp: "SetToolTip", header: wxh.}
proc setToolTip*(this: var WxWindowBase; tip: ptr WxToolTip) {.cdecl, 
    importcpp: "SetToolTip", header: wxh.}
proc unsetToolTip*(this: var WxWindowBase) {.cdecl, importcpp: "UnsetToolTip", 
    header: wxh.}
proc getToolTip*(this: WxWindowBase): ptr WxToolTip {.noSideEffect, cdecl, 
    importcpp: "GetToolTip", header: wxh.}
proc getToolTipText*(this: WxWindowBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetToolTipText", header: wxh.}
proc copyToolTip*(this: var WxWindowBase; tip: ptr WxToolTip): bool {.cdecl, 
    importcpp: "CopyToolTip", header: wxh.}
proc setDropTarget*(this: var WxWindowBase; dropTarget: ptr WxDropTarget) {.
    cdecl, importcpp: "SetDropTarget", header: wxh.}
proc getDropTarget*(this: WxWindowBase): ptr WxDropTarget {.noSideEffect, cdecl, 
    importcpp: "GetDropTarget", header: wxh.}
proc dragAcceptFiles*(this: var WxWindowBase; accept: bool) {.cdecl, 
    importcpp: "DragAcceptFiles", header: wxh.}
proc setConstraints*(this: var WxWindowBase; 
                     constraints: ptr WxLayoutConstraints) {.cdecl, 
    importcpp: "SetConstraints", header: wxh.}
proc getConstraints*(this: WxWindowBase): ptr WxLayoutConstraints {.
    noSideEffect, cdecl, importcpp: "GetConstraints", header: wxh.}
proc unsetConstraints*(this: var WxWindowBase; c: ptr WxLayoutConstraints) {.
    cdecl, importcpp: "UnsetConstraints", header: wxh.}
proc getConstraintsInvolvedIn*(this: WxWindowBase): ptr WxWindowList {.
    noSideEffect, cdecl, importcpp: "GetConstraintsInvolvedIn", header: wxh.}
proc addConstraintReference*(this: var WxWindowBase; otherWin: ptr WxWindowBase) {.
    cdecl, importcpp: "AddConstraintReference", header: wxh.}
proc removeConstraintReference*(this: var WxWindowBase; 
                                otherWin: ptr WxWindowBase) {.cdecl, 
    importcpp: "RemoveConstraintReference", header: wxh.}
proc deleteRelatedConstraints*(this: var WxWindowBase) {.cdecl, 
    importcpp: "DeleteRelatedConstraints", header: wxh.}
proc resetConstraints*(this: var WxWindowBase) {.cdecl, 
    importcpp: "ResetConstraints", header: wxh.}
proc setConstraintSizes*(this: var WxWindowBase; recurse: bool = true) {.cdecl, 
    importcpp: "SetConstraintSizes", header: wxh.}
proc layoutPhase1*(this: var WxWindowBase; noChanges: ptr cint): bool {.cdecl, 
    importcpp: "LayoutPhase1", header: wxh.}
proc layoutPhase2*(this: var WxWindowBase; noChanges: ptr cint): bool {.cdecl, 
    importcpp: "LayoutPhase2", header: wxh.}
proc doPhase*(this: var WxWindowBase; phase: cint): bool {.cdecl, 
    importcpp: "DoPhase", header: wxh.}
proc setSizeConstraint*(this: var WxWindowBase; x: cint; y: cint; w: cint; 
                        h: cint) {.cdecl, importcpp: "SetSizeConstraint", 
                                   header: wxh.}
proc moveConstraint*(this: var WxWindowBase; x: cint; y: cint) {.cdecl, 
    importcpp: "MoveConstraint", header: wxh.}
proc getSizeConstraint*(this: WxWindowBase; w: ptr cint; h: ptr cint) {.
    noSideEffect, cdecl, importcpp: "GetSizeConstraint", header: wxh.}
proc getClientSizeConstraint*(this: WxWindowBase; w: ptr cint; h: ptr cint) {.
    noSideEffect, cdecl, importcpp: "GetClientSizeConstraint", header: wxh.}
proc getPositionConstraint*(this: WxWindowBase; x: ptr cint; y: ptr cint) {.
    noSideEffect, cdecl, importcpp: "GetPositionConstraint", header: wxh.}
proc setAutoLayout*(this: var WxWindowBase; autoLayout: bool) {.cdecl, 
    importcpp: "SetAutoLayout", header: wxh.}
proc getAutoLayout*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "GetAutoLayout", header: wxh.}
proc layout*(this: var WxWindowBase): bool {.cdecl, importcpp: "Layout", 
    header: wxh.}
proc setSizer*(this: var WxWindowBase; sizer: ptr WxSizer; 
               deleteOld: bool = true) {.cdecl, importcpp: "SetSizer", 
    header: wxh.}
proc setSizerAndFit*(this: var WxWindowBase; sizer: ptr WxSizer; 
                     deleteOld: bool = true) {.cdecl, 
    importcpp: "SetSizerAndFit", header: wxh.}
proc getSizer*(this: WxWindowBase): ptr WxSizer {.noSideEffect, cdecl, 
    importcpp: "GetSizer", header: wxh.}
proc setContainingSizer*(this: var WxWindowBase; sizer: ptr WxSizer) {.cdecl, 
    importcpp: "SetContainingSizer", header: wxh.}
proc getContainingSizer*(this: WxWindowBase): ptr WxSizer {.noSideEffect, cdecl, 
    importcpp: "GetContainingSizer", header: wxh.}
proc setTransparent*(this: var WxWindowBase; alpha: WxByte): bool {.discardable, 
    cdecl, importcpp: "SetTransparent", header: wxh.}
proc canSetTransparent*(this: var WxWindowBase): bool {.cdecl, 
    importcpp: "CanSetTransparent", header: wxh.}
proc onSysColourChanged*(this: var WxWindowBase; 
                         event: var WxSysColourChangedEvent) {.cdecl, 
    importcpp: "OnSysColourChanged", header: wxh.}
proc onInitDialog*(this: var WxWindowBase; event: var WxInitDialogEvent) {.
    cdecl, importcpp: "OnInitDialog", header: wxh.}
proc onMiddleClick*(this: var WxWindowBase; event: var WxMouseEvent) {.cdecl, 
    importcpp: "OnMiddleClick", header: wxh.}
proc onHelp*(this: var WxWindowBase; event: var WxHelpEvent) {.cdecl, 
    importcpp: "OnHelp", header: wxh.}
proc onInternalIdle*(this: var WxWindowBase) {.cdecl, 
    importcpp: "OnInternalIdle", header: wxh.}
proc sendIdleEvents*(this: var WxWindowBase; event: var WxIdleEvent): bool {.
    cdecl, importcpp: "SendIdleEvents", header: wxh.}
proc getHandle*(this: WxWindowBase): WXWidget {.noSideEffect, cdecl, 
    importcpp: "GetHandle", header: wxh.}
proc associateHandle*(this: var WxWindowBase; handle: WXWidget) {.cdecl, 
    importcpp: "AssociateHandle", header: wxh.}
proc dissociateHandle*(this: var WxWindowBase) {.cdecl, 
    importcpp: "DissociateHandle", header: wxh.}
proc inheritAttributes*(this: var WxWindowBase) {.cdecl, 
    importcpp: "InheritAttributes", header: wxh.}
proc shouldInheritColours*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "ShouldInheritColours", header: wxh.}
proc canBeOutsideClientArea*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "CanBeOutsideClientArea", header: wxh.}
proc canApplyThemeBorder*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "CanApplyThemeBorder", header: wxh.}
proc getMainWindowOfCompositeControl*(this: var WxWindowBase): ptr WxWindow {.
    cdecl, importcpp: "GetMainWindowOfCompositeControl", header: wxh.}
proc isTopNavigationDomain*(this: WxWindowBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsTopNavigationDomain", header: wxh.}

proc wxFindWindowAtPointer*(pt: var WxPoint): ptr WxWindow {.cdecl, 
    importcpp: "wxFindWindowAtPointer(@)", header: wxh.}

proc wxGetMousePosition*(): WxPoint {.cdecl, importcpp: "wxGetMousePosition(@)", 
                                      header: wxh.}

proc wxGetActiveWindow*(): ptr WxWindow {.cdecl, 
    importcpp: "wxGetActiveWindow(@)", header: wxh.}

proc wxGetTopLevelParent*(win: ptr WxWindow): ptr WxWindow {.cdecl, 
    importcpp: "wxGetTopLevelParent(@)", header: wxh.}

type 
  WxAccStatus* {.importcpp: "wxAccStatus", header: wxh.} = object 
  
  WxNavDir* {.importcpp: "wxNavDir", header: wxh.} = object 
  
  WxAccRole* {.importcpp: "wxAccRole", header: wxh.} = object 
  
  WxAccSelectionFlags* {.importcpp: "wxAccSelectionFlags", header: wxh.} = object 
  
  WxWindowAccessible* {.importcpp: "wxWindowAccessible", header: wxh.} = object of WxAccessible
  

proc constructwxWindowAccessible*(win: ptr WxWindow): WxWindowAccessible {.
    cdecl, constructor, importcpp: "wxWindowAccessible(@)", header: wxh.}
proc destroywxWindowAccessible*(this: var WxWindowAccessible) {.cdecl, 
    importcpp: "#.~wxWindowAccessible()", header: wxh.}
proc hitTest*(this: var WxWindowAccessible; pt: WxPoint; childId: ptr cint; 
              childObject: ptr ptr WxAccessible): WxAccStatus {.cdecl, 
    importcpp: "HitTest", header: wxh.}
proc getLocation*(this: var WxWindowAccessible; rect: var WxRect; 
                  elementId: cint): WxAccStatus {.cdecl, 
    importcpp: "GetLocation", header: wxh.}
proc navigate*(this: var WxWindowAccessible; navDir: WxNavDir; fromId: cint; 
               toId: ptr cint; toObject: ptr ptr WxAccessible): WxAccStatus {.
    cdecl, importcpp: "Navigate", header: wxh.}
proc getName*(this: var WxWindowAccessible; childId: cint; name: ptr WxString): WxAccStatus {.
    cdecl, importcpp: "GetName", header: wxh.}
proc getChildCount*(this: var WxWindowAccessible; childCount: ptr cint): WxAccStatus {.
    cdecl, importcpp: "GetChildCount", header: wxh.}
proc getChild*(this: var WxWindowAccessible; childId: cint; 
               child: ptr ptr WxAccessible): WxAccStatus {.cdecl, 
    importcpp: "GetChild", header: wxh.}
proc getParent*(this: var WxWindowAccessible; parent: ptr ptr WxAccessible): WxAccStatus {.
    cdecl, importcpp: "GetParent", header: wxh.}
proc doDefaultAction*(this: var WxWindowAccessible; childId: cint): WxAccStatus {.
    cdecl, importcpp: "DoDefaultAction", header: wxh.}
proc getDefaultAction*(this: var WxWindowAccessible; childId: cint; 
                       actionName: ptr WxString): WxAccStatus {.cdecl, 
    importcpp: "GetDefaultAction", header: wxh.}
proc getDescription*(this: var WxWindowAccessible; childId: cint; 
                     description: ptr WxString): WxAccStatus {.cdecl, 
    importcpp: "GetDescription", header: wxh.}
proc getHelpText*(this: var WxWindowAccessible; childId: cint; 
                  helpText: ptr WxString): WxAccStatus {.cdecl, 
    importcpp: "GetHelpText", header: wxh.}
proc getKeyboardShortcut*(this: var WxWindowAccessible; childId: cint; 
                          shortcut: ptr WxString): WxAccStatus {.cdecl, 
    importcpp: "GetKeyboardShortcut", header: wxh.}
proc getRole*(this: var WxWindowAccessible; childId: cint; role: ptr WxAccRole): WxAccStatus {.
    cdecl, importcpp: "GetRole", header: wxh.}
proc getState*(this: var WxWindowAccessible; childId: cint; state: ptr clong): WxAccStatus {.
    cdecl, importcpp: "GetState", header: wxh.}
proc getValue*(this: var WxWindowAccessible; childId: cint; 
               strValue: ptr WxString): WxAccStatus {.cdecl, 
    importcpp: "GetValue", header: wxh.}
proc select*(this: var WxWindowAccessible; childId: cint; 
             selectFlags: WxAccSelectionFlags): WxAccStatus {.cdecl, 
    importcpp: "Select", header: wxh.}
proc getFocus*(this: var WxWindowAccessible; childId: ptr cint; 
               child: ptr ptr WxAccessible): WxAccStatus {.cdecl, 
    importcpp: "GetFocus", header: wxh.}
discard "forward decl of wxControlRenderer"
discard "forward decl of wxEventLoop"
discard "forward decl of wxMenu"
discard "forward decl of wxMenuBar"
discard "forward decl of wxRenderer"
discard "forward decl of wxScrollBar"
const 
  wxUSE_TWO_WINDOWS* = 0


type 
  WxWindow* {.importcpp: "wxWindow", header: wxh.} = object of WxWindowBase
  

proc constructwxWindow*(): WxWindow {.cdecl, constructor, 
                                      importcpp: "wxWindow(@)", header: wxh.}
proc constructwxWindow*(parent: ptr WxWindow; id: WxWindowID; 
                        pos: WxPoint = wxDefaultPosition; 
                        size: WxSize = wxDefaultSize; style: clong = 0; 
                        name: WxString = constructWxString("panel")): WxWindow {.
    cdecl, constructor, importcpp: "wxWindow(@)", header: wxh.}
proc create*(this: var WxWindow; parent: ptr WxWindow; id: WxWindowID; 
             pos: WxPoint = wxDefaultPosition; size: WxSize = wxDefaultSize; 
             style: clong = 0; name: WxString = constructWxString("panel")): bool {.
    cdecl, importcpp: "Create", header: wxh.}
proc destroywxWindow*(this: var WxWindow) {.cdecl, importcpp: "#.~wxWindow()", 
    header: wxh.}
proc setBackground*(this: var WxWindow; bitmap: WxBitmap; 
                    alignment = wxALIGN_CENTER; 
                    stretch: WxStretch = wxSTRETCH_NOT) {.cdecl, 
    importcpp: "SetBackground", header: wxh.}
proc getBackgroundBitmap*(this: WxWindow; alignment: ptr WxAlignment = nil; 
                          stretch: ptr WxStretch = nil): WxBitmap {.
    noSideEffect, cdecl, importcpp: "GetBackgroundBitmap", header: wxh.}
proc setScrollbar*(this: var WxWindow; orient: cint; pos: cint; page: cint; 
                   range: cint; refresh: bool = true) {.cdecl, 
    importcpp: "SetScrollbar", header: wxh.}
proc setScrollPos*(this: var WxWindow; orient: cint; pos: cint; 
                   refresh: bool = true) {.cdecl, importcpp: "SetScrollPos", 
    header: wxh.}
proc getScrollPos*(this: WxWindow; orient: cint): cint {.noSideEffect, cdecl, 
    importcpp: "GetScrollPos", header: wxh.}
proc getScrollThumb*(this: WxWindow; orient: cint): cint {.noSideEffect, cdecl, 
    importcpp: "GetScrollThumb", header: wxh.}
proc getScrollRange*(this: WxWindow; orient: cint): cint {.noSideEffect, cdecl, 
    importcpp: "GetScrollRange", header: wxh.}
proc scrollWindow*(this: var WxWindow; dx: cint; dy: cint; 
                   rect: ptr WxRect = nil) {.cdecl, importcpp: "ScrollWindow", 
    header: wxh.}
proc getClientAreaOrigin*(this: WxWindow): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetClientAreaOrigin", header: wxh.}
proc dismissPopupMenu*(this: var WxWindow) {.cdecl, 
    importcpp: "DismissPopupMenu", header: wxh.}
proc isFocused*(this: WxWindow): bool {.noSideEffect, cdecl, 
                                        importcpp: "IsFocused", header: wxh.}
proc isCurrent*(this: WxWindow): bool {.noSideEffect, cdecl, 
                                        importcpp: "IsCurrent", header: wxh.}
proc isPressed*(this: WxWindow): bool {.noSideEffect, cdecl, 
                                        importcpp: "IsPressed", header: wxh.}
proc isDefault*(this: WxWindow): bool {.noSideEffect, cdecl, 
                                        importcpp: "IsDefault", header: wxh.}
proc getStateFlags*(this: WxWindow): cint {.noSideEffect, cdecl, 
    importcpp: "GetStateFlags", header: wxh.}
proc setCurrent*(this: var WxWindow; doit: bool = true): bool {.discardable, 
    cdecl, importcpp: "SetCurrent", header: wxh.}
proc isCanvasWindow*(this: WxWindow): bool {.noSideEffect, cdecl, 
    importcpp: "IsCanvasWindow", header: wxh.}
proc canBeHighlighted*(this: WxWindow): bool {.noSideEffect, cdecl, 
    importcpp: "CanBeHighlighted", header: wxh.}
proc useFgCol*(this: WxWindow): bool {.noSideEffect, cdecl, 
                                       importcpp: "UseFgCol", header: wxh.}
proc useFont*(this: WxWindow): bool {.noSideEffect, cdecl, importcpp: "UseFont", 
                                      header: wxh.}
proc isStaticBox*(this: WxWindow): bool {.noSideEffect, cdecl, 
    importcpp: "IsStaticBox", header: wxh.}
proc getRenderer*(this: WxWindow): ptr WxRenderer {.noSideEffect, cdecl, 
    importcpp: "GetRenderer", header: wxh.}
proc scrollNoRefresh*(this: var WxWindow; dx: cint; dy: cint; 
                      rect: ptr WxRect = nil): WxRect {.cdecl, 
    importcpp: "ScrollNoRefresh", header: wxh.}
proc refreshScrollbars*(this: var WxWindow) {.cdecl, 
    importcpp: "RefreshScrollbars", header: wxh.}
proc refresh*(this: var WxWindow; eraseBackground: bool = true; 
              rect: ptr WxRect = nil) {.cdecl, importcpp: "Refresh", header: wxh.}
proc enable*(this: var WxWindow; enable: bool = true): bool {.cdecl, 
    importcpp: "Enable", header: wxh.}
proc shouldInheritColours*(this: WxWindow): bool {.noSideEffect, cdecl, 
    importcpp: "ShouldInheritColours", header: wxh.}
proc isClientAreaChild*(this: WxWindow; child: ptr WxWindow): bool {.
    noSideEffect, cdecl, importcpp: "IsClientAreaChild", header: wxh.}