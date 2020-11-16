

discard "forward decl of wxScrollHelperEvtHandler"
discard "forward decl of wxTimer"
const
  wxScrolledWindowStyle* = (wxHSCROLL or wxVSCROLL).clong


type
  WxScrollbarVisibility* {.size: sizeof(cint),
                          importcpp: "wxScrollbarVisibility", header: wxh.} = enum
    wxSHOW_SB_NEVER = - 1, wxSHOW_SB_DEFAULT, wxSHOW_SB_ALWAYS


#[ 
type
  WxAnyScrollHelperBase* {.importcpp: "wxAnyScrollHelperBase", header: wxh.} = object
  

proc constructwxAnyScrollHelperBase*(win: ptr WxWindow): WxAnyScrollHelperBase {.
    cdecl, constructor, importcpp: "wxAnyScrollHelperBase(@)", header: wxh.}
proc destroywxAnyScrollHelperBase*(this: var WxAnyScrollHelperBase) {.cdecl,
    importcpp: "#.~wxAnyScrollHelperBase()", header: wxh.}
proc disableKeyboardScrolling*(this: var WxAnyScrollHelperBase) {.cdecl,
    importcpp: "DisableKeyboardScrolling", header: wxh.}
proc onDraw*(this: var WxAnyScrollHelperBase; dc: var WxDC) {.cdecl,
    importcpp: "OnDraw", header: wxh.}
proc doPrepareDC*(this: var WxAnyScrollHelperBase; dc: var WxDC) {.cdecl,
    importcpp: "DoPrepareDC", header: wxh.}
proc getTargetWindow*(this: WxAnyScrollHelperBase): ptr WxWindow {.noSideEffect,
    cdecl, importcpp: "GetTargetWindow", header: wxh.}
proc handleOnChar*(this: var WxAnyScrollHelperBase; event: var WxKeyEvent) {.cdecl,
    importcpp: "HandleOnChar", header: wxh.}
proc handleOnPaint*(this: var WxAnyScrollHelperBase; event: var WxPaintEvent) {.cdecl,
    importcpp: "HandleOnPaint", header: wxh.}

type
  WxScrollHelperBase* {.importcpp: "wxScrollHelperBase", header: wxh.} = object of WxAnyScrollHelperBase
  

proc constructwxScrollHelperBase*(winToScroll: ptr WxWindow): WxScrollHelperBase {.
    cdecl, constructor, importcpp: "wxScrollHelperBase(@)", header: wxh.}
proc destroywxScrollHelperBase*(this: var WxScrollHelperBase) {.cdecl,
    importcpp: "#.~wxScrollHelperBase()", header: wxh.}
proc setScrollbars*(this: var WxScrollHelperBase; pixelsPerUnitX: cint;
                   pixelsPerUnitY: cint; noUnitsX: cint; noUnitsY: cint;
                   xPos: cint = 0; yPos: cint = 0; noRefresh: bool = false) {.cdecl,
    importcpp: "SetScrollbars", header: wxh.}
proc scroll*(this: var WxScrollHelperBase; x: cint; y: cint) {.cdecl,
    importcpp: "Scroll", header: wxh.}
proc scroll*(this: var WxScrollHelperBase; pt: WxPoint) {.cdecl, importcpp: "Scroll",
    header: wxh.}
proc getScrollPageSize*(this: WxScrollHelperBase; orient: cint): cint {.noSideEffect,
    cdecl, importcpp: "GetScrollPageSize", header: wxh.}
proc setScrollPageSize*(this: var WxScrollHelperBase; orient: cint; pageSize: cint) {.
    cdecl, importcpp: "SetScrollPageSize", header: wxh.}
proc getScrollLines*(this: WxScrollHelperBase; orient: cint): cint {.noSideEffect,
    cdecl, importcpp: "GetScrollLines", header: wxh.}
proc setScrollRate*(this: var WxScrollHelperBase; xstep: cint; ystep: cint) {.cdecl,
    importcpp: "SetScrollRate", header: wxh.}
proc getScrollPixelsPerUnit*(this: WxScrollHelperBase; pixelsPerUnitX: ptr cint;
                            pixelsPerUnitY: ptr cint) {.noSideEffect, cdecl,
    importcpp: "GetScrollPixelsPerUnit", header: wxh.}
proc showScrollbars*(this: var WxScrollHelperBase; horz: WxScrollbarVisibility;
                    vert: WxScrollbarVisibility) {.cdecl,
    importcpp: "ShowScrollbars", header: wxh.}
proc isScrollbarShown*(this: WxScrollHelperBase; orient: cint): bool {.noSideEffect,
    cdecl, importcpp: "IsScrollbarShown", header: wxh.}
proc enableScrolling*(this: var WxScrollHelperBase; xScrolling: bool; yScrolling: bool) {.
    cdecl, importcpp: "EnableScrolling", header: wxh.}
proc getViewStart*(this: WxScrollHelperBase; x: ptr cint; y: ptr cint) {.noSideEffect,
    cdecl, importcpp: "GetViewStart", header: wxh.}
proc getViewStart*(this: WxScrollHelperBase): WxPoint {.noSideEffect, cdecl,
    importcpp: "GetViewStart", header: wxh.}
proc setScale*(this: var WxScrollHelperBase; xs: cdouble; ys: cdouble) {.cdecl,
    importcpp: "SetScale", header: wxh.}
proc getScaleX*(this: WxScrollHelperBase): cdouble {.noSideEffect, cdecl,
    importcpp: "GetScaleX", header: wxh.}
proc getScaleY*(this: WxScrollHelperBase): cdouble {.noSideEffect, cdecl,
    importcpp: "GetScaleY", header: wxh.}
proc calcScrolledPosition*(this: WxScrollHelperBase; x: cint; y: cint; xx: ptr cint;
                          yy: ptr cint) {.noSideEffect, cdecl,
                                       importcpp: "CalcScrolledPosition",
                                       header: wxh.}
proc calcScrolledPosition*(this: WxScrollHelperBase; pt: WxPoint): WxPoint {.
    noSideEffect, cdecl, importcpp: "CalcScrolledPosition", header: wxh.}
proc calcUnscrolledPosition*(this: WxScrollHelperBase; x: cint; y: cint; xx: ptr cint;
                            yy: ptr cint) {.noSideEffect, cdecl,
    importcpp: "CalcUnscrolledPosition", header: wxh.}
proc calcUnscrolledPosition*(this: WxScrollHelperBase; pt: WxPoint): WxPoint {.
    noSideEffect, cdecl, importcpp: "CalcUnscrolledPosition", header: wxh.}
proc doCalcScrolledPosition*(this: WxScrollHelperBase; x: cint; y: cint; xx: ptr cint;
                            yy: ptr cint) {.noSideEffect, cdecl,
    importcpp: "DoCalcScrolledPosition", header: wxh.}
proc doCalcUnscrolledPosition*(this: WxScrollHelperBase; x: cint; y: cint;
                              xx: ptr cint; yy: ptr cint) {.noSideEffect, cdecl,
    importcpp: "DoCalcUnscrolledPosition", header: wxh.}
proc adjustScrollbars*(this: var WxScrollHelperBase) {.cdecl,
    importcpp: "AdjustScrollbars", header: wxh.}
proc calcScrollInc*(this: var WxScrollHelperBase; event: var WxScrollWinEvent): cint {.
    cdecl, importcpp: "CalcScrollInc", header: wxh.}
proc setTargetWindow*(this: var WxScrollHelperBase; target: ptr WxWindow) {.cdecl,
    importcpp: "SetTargetWindow", header: wxh.}
proc setTargetRect*(this: var WxScrollHelperBase; rect: WxRect) {.cdecl,
    importcpp: "SetTargetRect", header: wxh.}
proc getTargetRect*(this: WxScrollHelperBase): WxRect {.noSideEffect, cdecl,
    importcpp: "GetTargetRect", header: wxh.}
proc doPrepareDC*(this: var WxScrollHelperBase; dc: var WxDC) {.cdecl,
    importcpp: "DoPrepareDC", header: wxh.}
proc isAutoScrolling*(this: WxScrollHelperBase): bool {.noSideEffect, cdecl,
    importcpp: "IsAutoScrolling", header: wxh.}
proc stopAutoScrolling*(this: var WxScrollHelperBase) {.cdecl,
    importcpp: "StopAutoScrolling", header: wxh.}
proc sendAutoScrollEvents*(this: WxScrollHelperBase; event: var WxScrollWinEvent): bool {.
    noSideEffect, cdecl, importcpp: "SendAutoScrollEvents", header: wxh.}
proc handleOnScroll*(this: var WxScrollHelperBase; event: var WxScrollWinEvent) {.
    cdecl, importcpp: "HandleOnScroll", header: wxh.}
proc handleOnSize*(this: var WxScrollHelperBase; event: var WxSizeEvent) {.cdecl,
    importcpp: "HandleOnSize", header: wxh.}
proc handleOnMouseEnter*(this: var WxScrollHelperBase; event: var WxMouseEvent) {.
    cdecl, importcpp: "HandleOnMouseEnter", header: wxh.}
proc handleOnMouseLeave*(this: var WxScrollHelperBase; event: var WxMouseEvent) {.
    cdecl, importcpp: "HandleOnMouseLeave", header: wxh.}
proc handleOnMouseWheel*(this: var WxScrollHelperBase; event: var WxMouseEvent) {.
    cdecl, importcpp: "HandleOnMouseWheel", header: wxh.}
proc handleOnChildFocus*(this: var WxScrollHelperBase; event: var WxChildFocusEvent) {.
    cdecl, importcpp: "HandleOnChildFocus", header: wxh.}


type
  WxScrolledT_Helper* {.importcpp: "wxScrolledT_Helper", header: wxh.} = object
  

proc filterBestSize*(win: ptr WxWindow; helper: ptr WxScrollHelper; origBest: WxSize): WxSize {.
    cdecl, importcpp: "wxScrolledT_Helper::FilterBestSize(@)", header: wxh.}



type
  WxAnyScrollHelperBase* {.importcpp: "wxAnyScrollHelperBase", header: wxh.} = object of RootObj

  WxScrollHelperBase* {.importcpp: "wxScrollHelperBase", header: wxh.} = object of WxAnyScrollHelperBase

]#

type
  WxScrolled* {.importcpp: "wxScrolled", header: wxh.}[T] = object of T
  

proc constructwxScrolled*[T](): WxScrolled[T] {.cdecl, constructor,
    importcpp: "wxScrolled(@)", header: wxh.}
proc constructwxScrolled*[T](parent: ptr WxWindow; winid: WxWindowID = wxID_ANY;
                            pos: WxPoint = wxDefaultPosition;
                            size: WxSize = wxDefaultSize;
                            style: clong = wxScrolledWindowStyle;
                            name: WxString = constructWxString("panel")): WxScrolled[
    T] {.cdecl, constructor, importcpp: "wxScrolled(@)", header: wxh.}
proc create*[T](this: var WxScrolled[T]; parent: ptr WxWindow; winid: WxWindowID;
               pos: WxPoint = wxDefaultPosition; size: WxSize = wxDefaultSize;
               style: clong = wxScrolledWindowStyle;
               name: WxString = constructWxString("panel")): bool {.cdecl,
    importcpp: "Create", header: wxh.}

type
  WxScrolledWindow* {.importcpp: "wxScrolledWindow", header: wxh.} = object of WxScrolled[
      WxPanel]
  

proc constructwxScrolledWindow*(): WxScrolledWindow {.cdecl, constructor,
    importcpp: "wxScrolledWindow(@)", header: wxh.}
proc constructwxScrolledWindow*(parent: ptr WxWindow; id: WxWindowID = wxID_ANY;
                               pos: WxPoint = wxDefaultPosition;
                               size: WxSize = wxDefaultSize;
                               style: clong = wxScrolledWindowStyle;
                               name: WxString = constructWxString("panel")): WxScrolledWindow {.
    cdecl, constructor, importcpp: "wxScrolledWindow(@)", header: wxh.}
type
  WxScrolledCanvas* = WxScrolled[WxWindow]

proc setScrollbars*(this: var WxScrolledWindow; pixelsPerUnitX: cint;
                   pixelsPerUnitY: cint; noUnitsX: cint; noUnitsY: cint;
                   xPos: cint = 0; yPos: cint = 0; noRefresh: bool = false) {.cdecl,
    importcpp: "SetScrollbars", header: wxh.}

proc showScrollbars*(this: var WxScrolledWindow; horz: WxScrollbarVisibility;
                    vert: WxScrollbarVisibility) {.cdecl,
    importcpp: "ShowScrollbars", header: wxh.}

#proc setScrollPageSize*(this: var WxScrolledWindow; orient: cint; pageSize: cint) {.
#    cdecl, importcpp: "SetScrollPageSize", header: wxh.}