


discard "forward decl of wxButton"
discard "forward decl of wxBoxSizer"
discard "forward decl of wxSizerItem"
discard "forward decl of wxSizer"
type 
  WxSizerFlags* {.importcpp: "wxSizerFlags", header: "wx.h".} = object 
    mProportion* {.importc: "m_proportion".}: cint
    mFlags* {.importc: "m_flags".}: cint
    mBorderInPixels* {.importc: "m_borderInPixels".}: cint


proc constructwxSizerFlags*(proportion: cint = 0): WxSizerFlags {.cdecl, 
    constructor, importcpp: "wxSizerFlags(@)", header: "wx.h".}
proc proportion*(this: var WxSizerFlags; proportion: cint): var WxSizerFlags {.
    cdecl, importcpp: "Proportion", header: "wx.h".}
proc expand*(this: var WxSizerFlags): var WxSizerFlags {.cdecl, 
    importcpp: "Expand", header: "wx.h".}
proc align*(this: var WxSizerFlags; alignment: cint): var WxSizerFlags {.cdecl, 
    importcpp: "Align", header: "wx.h".}
proc centre*(this: var WxSizerFlags): var WxSizerFlags {.cdecl, 
    importcpp: "Centre", header: "wx.h".}
proc center*(this: var WxSizerFlags): var WxSizerFlags {.cdecl, 
    importcpp: "Center", header: "wx.h".}
proc top*(this: var WxSizerFlags): var WxSizerFlags {.cdecl, importcpp: "Top", 
    header: "wx.h".}
proc left*(this: var WxSizerFlags): var WxSizerFlags {.cdecl, importcpp: "Left", 
    header: "wx.h".}
proc right*(this: var WxSizerFlags): var WxSizerFlags {.cdecl, 
    importcpp: "Right", header: "wx.h".}
proc bottom*(this: var WxSizerFlags): var WxSizerFlags {.cdecl, 
    importcpp: "Bottom", header: "wx.h".}
proc getDefaultBorder*(): cint {.cdecl, importcpp: "wxSizerFlags::GetDefaultBorder(@)", 
                                 header: "wx.h".}
proc border*(this: var WxSizerFlags; direction: cint; borderInPixels: cint): var WxSizerFlags {.
    cdecl, importcpp: "Border", header: "wx.h".}
proc border*(this: var WxSizerFlags; direction: auto = wxALL): var WxSizerFlags {.
    cdecl, importcpp: "Border", header: "wx.h".}
proc doubleBorder*(this: var WxSizerFlags; direction: auto = wxALL): var WxSizerFlags {.
    cdecl, importcpp: "DoubleBorder", header: "wx.h".}
proc tripleBorder*(this: var WxSizerFlags; direction: auto = wxALL): var WxSizerFlags {.
    cdecl, importcpp: "TripleBorder", header: "wx.h".}
proc horzBorder*(this: var WxSizerFlags): var WxSizerFlags {.cdecl, 
    importcpp: "HorzBorder", header: "wx.h".}
proc doubleHorzBorder*(this: var WxSizerFlags): var WxSizerFlags {.cdecl, 
    importcpp: "DoubleHorzBorder", header: "wx.h".}
proc shaped*(this: var WxSizerFlags): var WxSizerFlags {.cdecl, 
    importcpp: "Shaped", header: "wx.h".}
proc fixedMinSize*(this: var WxSizerFlags): var WxSizerFlags {.cdecl, 
    importcpp: "FixedMinSize", header: "wx.h".}
proc reserveSpaceEvenIfHidden*(this: var WxSizerFlags): var WxSizerFlags {.
    cdecl, importcpp: "ReserveSpaceEvenIfHidden", header: "wx.h".}
proc getProportion*(this: WxSizerFlags): cint {.noSideEffect, cdecl, 
    importcpp: "GetProportion", header: "wx.h".}
proc getFlags*(this: WxSizerFlags): cint {.noSideEffect, cdecl, 
    importcpp: "GetFlags", header: "wx.h".}
proc getBorderInPixels*(this: WxSizerFlags): cint {.noSideEffect, cdecl, 
    importcpp: "GetBorderInPixels", header: "wx.h".}

type 
  WxSizerSpacer* {.importcpp: "wxSizerSpacer", header: "wx.h".} = object 
    mSize* {.importc: "m_size".}: WxSize
    mIsShown* {.importc: "m_isShown".}: bool


proc constructwxSizerSpacer*(size: WxSize): WxSizerSpacer {.cdecl, constructor, 
    importcpp: "wxSizerSpacer(@)", header: "wx.h".}
proc setSize*(this: var WxSizerSpacer; size: WxSize) {.cdecl, 
    importcpp: "SetSize", header: "wx.h".}
proc getSize*(this: WxSizerSpacer): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetSize", header: "wx.h".}
proc show*(this: var WxSizerSpacer; show: bool) {.cdecl, importcpp: "Show", 
    header: "wx.h".}
proc isShown*(this: WxSizerSpacer): bool {.noSideEffect, cdecl, 
    importcpp: "IsShown", header: "wx.h".}

type 
  WxSizerItem* {.importcpp: "wxSizerItem", header: "wx.h".} = object of WxObject
  

proc constructwxSizerItem*(window: ptr WxWindow; proportion: cint = 0; 
                           flag: cint = 0; border: cint = 0; 
                           userData: ptr WxObject = nil): WxSizerItem {.cdecl, 
    constructor, importcpp: "wxSizerItem(@)", header: "wx.h".}
proc constructwxSizerItem*(window: ptr WxWindow; flags: WxSizerFlags): WxSizerItem {.
    cdecl, constructor, importcpp: "wxSizerItem(@)", header: "wx.h".}
proc constructwxSizerItem*(sizer: ptr WxSizer; proportion: cint = 0; 
                           flag: cint = 0; border: cint = 0; 
                           userData: ptr WxObject = nil): WxSizerItem {.cdecl, 
    constructor, importcpp: "wxSizerItem(@)", header: "wx.h".}
proc constructwxSizerItem*(sizer: ptr WxSizer; flags: WxSizerFlags): WxSizerItem {.
    cdecl, constructor, importcpp: "wxSizerItem(@)", header: "wx.h".}
proc constructwxSizerItem*(width: cint; height: cint; proportion: cint = 0; 
                           flag: cint = 0; border: cint = 0; 
                           userData: ptr WxObject = nil): WxSizerItem {.cdecl, 
    constructor, importcpp: "wxSizerItem(@)", header: "wx.h".}
proc constructwxSizerItem*(width: cint; height: cint; flags: WxSizerFlags): WxSizerItem {.
    cdecl, constructor, importcpp: "wxSizerItem(@)", header: "wx.h".}
proc constructwxSizerItem*(): WxSizerItem {.cdecl, constructor, 
    importcpp: "wxSizerItem(@)", header: "wx.h".}
proc destroywxSizerItem*(this: var WxSizerItem) {.cdecl, 
    importcpp: "#.~wxSizerItem()", header: "wx.h".}
proc deleteWindows*(this: var WxSizerItem) {.cdecl, importcpp: "DeleteWindows", 
    header: "wx.h".}
proc detachSizer*(this: var WxSizerItem) {.cdecl, importcpp: "DetachSizer", 
    header: "wx.h".}
proc getSize*(this: WxSizerItem): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetSize", header: "wx.h".}
proc calcMin*(this: var WxSizerItem): WxSize {.cdecl, importcpp: "CalcMin", 
    header: "wx.h".}
proc setDimension*(this: var WxSizerItem; pos: WxPoint; size: WxSize) {.cdecl, 
    importcpp: "SetDimension", header: "wx.h".}
proc getMinSize*(this: WxSizerItem): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetMinSize", header: "wx.h".}
proc getMinSizeWithBorder*(this: WxSizerItem): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetMinSizeWithBorder", header: "wx.h".}
proc getMaxSize*(this: WxSizerItem): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetMaxSize", header: "wx.h".}
proc getMaxSizeWithBorder*(this: WxSizerItem): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetMaxSizeWithBorder", header: "wx.h".}
proc setMinSize*(this: var WxSizerItem; size: WxSize) {.cdecl, 
    importcpp: "SetMinSize", header: "wx.h".}
proc setMinSize*(this: var WxSizerItem; x: cint; y: cint) {.cdecl, 
    importcpp: "SetMinSize", header: "wx.h".}
proc setInitSize*(this: var WxSizerItem; x: cint; y: cint) {.cdecl, 
    importcpp: "SetInitSize", header: "wx.h".}
proc setRatio*(this: var WxSizerItem; width: cint; height: cint) {.cdecl, 
    importcpp: "SetRatio", header: "wx.h".}
proc setRatio*(this: var WxSizerItem; size: WxSize) {.cdecl, 
    importcpp: "SetRatio", header: "wx.h".}
proc setRatio*(this: var WxSizerItem; ratio: cfloat) {.cdecl, 
    importcpp: "SetRatio", header: "wx.h".}
proc getRatio*(this: WxSizerItem): cfloat {.noSideEffect, cdecl, 
    importcpp: "GetRatio", header: "wx.h".}
proc getRect*(this: var WxSizerItem): WxRect {.cdecl, importcpp: "GetRect", 
    header: "wx.h".}
proc setId*(this: var WxSizerItem; id: cint) {.cdecl, importcpp: "SetId", 
    header: "wx.h".}
proc getId*(this: WxSizerItem): cint {.noSideEffect, cdecl, importcpp: "GetId", 
                                       header: "wx.h".}
proc isWindow*(this: WxSizerItem): bool {.noSideEffect, cdecl, 
    importcpp: "IsWindow", header: "wx.h".}
proc isSizer*(this: WxSizerItem): bool {.noSideEffect, cdecl, 
    importcpp: "IsSizer", header: "wx.h".}
proc isSpacer*(this: WxSizerItem): bool {.noSideEffect, cdecl, 
    importcpp: "IsSpacer", header: "wx.h".}
proc setProportion*(this: var WxSizerItem; proportion: cint) {.cdecl, 
    importcpp: "SetProportion", header: "wx.h".}
proc getProportion*(this: WxSizerItem): cint {.noSideEffect, cdecl, 
    importcpp: "GetProportion", header: "wx.h".}
proc setFlag*(this: var WxSizerItem; flag: cint) {.cdecl, importcpp: "SetFlag", 
    header: "wx.h".}
proc getFlag*(this: WxSizerItem): cint {.noSideEffect, cdecl, 
    importcpp: "GetFlag", header: "wx.h".}
proc setBorder*(this: var WxSizerItem; border: cint) {.cdecl, 
    importcpp: "SetBorder", header: "wx.h".}
proc getBorder*(this: WxSizerItem): cint {.noSideEffect, cdecl, 
    importcpp: "GetBorder", header: "wx.h".}
proc getWindow*(this: WxSizerItem): ptr WxWindow {.noSideEffect, cdecl, 
    importcpp: "GetWindow", header: "wx.h".}
proc getSizer*(this: WxSizerItem): ptr WxSizer {.noSideEffect, cdecl, 
    importcpp: "GetSizer", header: "wx.h".}
proc getSpacer*(this: WxSizerItem): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetSpacer", header: "wx.h".}
proc isShown*(this: WxSizerItem): bool {.noSideEffect, cdecl, 
    importcpp: "IsShown", header: "wx.h".}
proc show*(this: var WxSizerItem; show: bool) {.cdecl, importcpp: "Show", 
    header: "wx.h".}
proc setUserData*(this: var WxSizerItem; userData: ptr WxObject) {.cdecl, 
    importcpp: "SetUserData", header: "wx.h".}
proc getUserData*(this: WxSizerItem): ptr WxObject {.noSideEffect, cdecl, 
    importcpp: "GetUserData", header: "wx.h".}
proc getPosition*(this: WxSizerItem): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetPosition", header: "wx.h".}
proc informFirstDirection*(this: var WxSizerItem; direction: cint; size: cint; 
                           availableOtherDir: cint = - 1): bool {.cdecl, 
    importcpp: "InformFirstDirection", header: "wx.h".}
proc assignWindow*(this: var WxSizerItem; window: ptr WxWindow) {.cdecl, 
    importcpp: "AssignWindow", header: "wx.h".}
proc assignSizer*(this: var WxSizerItem; sizer: ptr WxSizer) {.cdecl, 
    importcpp: "AssignSizer", header: "wx.h".}
proc assignSpacer*(this: var WxSizerItem; size: WxSize) {.cdecl, 
    importcpp: "AssignSpacer", header: "wx.h".}
proc assignSpacer*(this: var WxSizerItem; w: cint; h: cint) {.cdecl, 
    importcpp: "AssignSpacer", header: "wx.h".}

type 
  WxSizer* {.importcpp: "wxSizer", header: "wx.h".} = object of WxObject
  

proc constructwxSizer*(): WxSizer {.cdecl, constructor, importcpp: "wxSizer(@)", 
                                    header: "wx.h".}
proc destroywxSizer*(this: var WxSizer) {.cdecl, importcpp: "#.~wxSizer()", 
    header: "wx.h".}
proc add*(this: var WxSizer; window: ptr WxWindow; proportion: cint = 0; 
          flag: cint = 0; border: cint = 0; userData: ptr WxObject = nil): ptr WxSizerItem {.
    cdecl, importcpp: "Add", header: "wx.h".}
proc add*(this: var WxSizer; sizer: ptr WxSizer; proportion: cint = 0; 
          flag: cint = 0; border: cint = 0; userData: ptr WxObject = nil): ptr WxSizerItem {.
    cdecl, importcpp: "Add", header: "wx.h".}
proc add*(this: var WxSizer; width: cint; height: cint; proportion: cint = 0; 
          flag: cint = 0; border: cint = 0; userData: ptr WxObject = nil): ptr WxSizerItem {.
    cdecl, importcpp: "Add", header: "wx.h".}
proc add*(this: var WxSizer; window: ptr WxWindow; flags: WxSizerFlags): ptr WxSizerItem {.
    cdecl, importcpp: "Add", header: "wx.h".}
proc add*(this: var WxSizer; sizer: ptr WxSizer; flags: WxSizerFlags): ptr WxSizerItem {.
    cdecl, importcpp: "Add", header: "wx.h".}
proc add*(this: var WxSizer; width: cint; height: cint; flags: WxSizerFlags): ptr WxSizerItem {.
    cdecl, importcpp: "Add", header: "wx.h".}
proc add*(this: var WxSizer; item: ptr WxSizerItem): ptr WxSizerItem {.cdecl, 
    importcpp: "Add", header: "wx.h".}
proc addSpacer*(this: var WxSizer; size: cint): ptr WxSizerItem {.cdecl, 
    importcpp: "AddSpacer", header: "wx.h".}
proc addStretchSpacer*(this: var WxSizer; prop: cint = 1): ptr WxSizerItem {.
    cdecl, importcpp: "AddStretchSpacer", header: "wx.h".}
proc insert*(this: var WxSizer; index: csize; window: ptr WxWindow; 
             proportion: cint = 0; flag: cint = 0; border: cint = 0; 
             userData: ptr WxObject = nil): ptr WxSizerItem {.cdecl, 
    importcpp: "Insert", header: "wx.h".}
proc insert*(this: var WxSizer; index: csize; sizer: ptr WxSizer; 
             proportion: cint = 0; flag: cint = 0; border: cint = 0; 
             userData: ptr WxObject = nil): ptr WxSizerItem {.cdecl, 
    importcpp: "Insert", header: "wx.h".}
proc insert*(this: var WxSizer; index: csize; width: cint; height: cint; 
             proportion: cint = 0; flag: cint = 0; border: cint = 0; 
             userData: ptr WxObject = nil): ptr WxSizerItem {.cdecl, 
    importcpp: "Insert", header: "wx.h".}
proc insert*(this: var WxSizer; index: csize; window: ptr WxWindow; 
             flags: WxSizerFlags): ptr WxSizerItem {.cdecl, importcpp: "Insert", 
    header: "wx.h".}
proc insert*(this: var WxSizer; index: csize; sizer: ptr WxSizer; 
             flags: WxSizerFlags): ptr WxSizerItem {.cdecl, importcpp: "Insert", 
    header: "wx.h".}
proc insert*(this: var WxSizer; index: csize; width: cint; height: cint; 
             flags: WxSizerFlags): ptr WxSizerItem {.cdecl, importcpp: "Insert", 
    header: "wx.h".}
proc insert*(this: var WxSizer; index: csize; item: ptr WxSizerItem): ptr WxSizerItem {.
    cdecl, importcpp: "Insert", header: "wx.h".}
proc insertSpacer*(this: var WxSizer; index: csize; size: cint): ptr WxSizerItem {.
    cdecl, importcpp: "InsertSpacer", header: "wx.h".}
proc insertStretchSpacer*(this: var WxSizer; index: csize; prop: cint = 1): ptr WxSizerItem {.
    cdecl, importcpp: "InsertStretchSpacer", header: "wx.h".}
proc prepend*(this: var WxSizer; window: ptr WxWindow; proportion: cint = 0; 
              flag: cint = 0; border: cint = 0; userData: ptr WxObject = nil): ptr WxSizerItem {.
    cdecl, importcpp: "Prepend", header: "wx.h".}
proc prepend*(this: var WxSizer; sizer: ptr WxSizer; proportion: cint = 0; 
              flag: cint = 0; border: cint = 0; userData: ptr WxObject = nil): ptr WxSizerItem {.
    cdecl, importcpp: "Prepend", header: "wx.h".}
proc prepend*(this: var WxSizer; width: cint; height: cint; 
              proportion: cint = 0; flag: cint = 0; border: cint = 0; 
              userData: ptr WxObject = nil): ptr WxSizerItem {.cdecl, 
    importcpp: "Prepend", header: "wx.h".}
proc prepend*(this: var WxSizer; window: ptr WxWindow; flags: WxSizerFlags): ptr WxSizerItem {.
    cdecl, importcpp: "Prepend", header: "wx.h".}
proc prepend*(this: var WxSizer; sizer: ptr WxSizer; flags: WxSizerFlags): ptr WxSizerItem {.
    cdecl, importcpp: "Prepend", header: "wx.h".}
proc prepend*(this: var WxSizer; width: cint; height: cint; flags: WxSizerFlags): ptr WxSizerItem {.
    cdecl, importcpp: "Prepend", header: "wx.h".}
proc prepend*(this: var WxSizer; item: ptr WxSizerItem): ptr WxSizerItem {.
    cdecl, importcpp: "Prepend", header: "wx.h".}
proc prependSpacer*(this: var WxSizer; size: cint): ptr WxSizerItem {.cdecl, 
    importcpp: "PrependSpacer", header: "wx.h".}
proc prependStretchSpacer*(this: var WxSizer; prop: cint = 1): ptr WxSizerItem {.
    cdecl, importcpp: "PrependStretchSpacer", header: "wx.h".}
proc setContainingWindow*(this: var WxSizer; window: ptr WxWindow) {.cdecl, 
    importcpp: "SetContainingWindow", header: "wx.h".}
proc getContainingWindow*(this: WxSizer): ptr WxWindow {.noSideEffect, cdecl, 
    importcpp: "GetContainingWindow", header: "wx.h".}
proc remove*(this: var WxSizer; sizer: ptr WxSizer): bool {.cdecl, 
    importcpp: "Remove", header: "wx.h".}
proc remove*(this: var WxSizer; index: cint): bool {.cdecl, importcpp: "Remove", 
    header: "wx.h".}
proc detach*(this: var WxSizer; window: ptr WxWindow): bool {.cdecl, 
    importcpp: "Detach", header: "wx.h".}
proc detach*(this: var WxSizer; sizer: ptr WxSizer): bool {.cdecl, 
    importcpp: "Detach", header: "wx.h".}
proc detach*(this: var WxSizer; index: cint): bool {.cdecl, importcpp: "Detach", 
    header: "wx.h".}
proc replace*(this: var WxSizer; oldwin: ptr WxWindow; newwin: ptr WxWindow; 
              recursive: bool = false): bool {.cdecl, importcpp: "Replace", 
    header: "wx.h".}
proc replace*(this: var WxSizer; oldsz: ptr WxSizer; newsz: ptr WxSizer; 
              recursive: bool = false): bool {.cdecl, importcpp: "Replace", 
    header: "wx.h".}
proc replace*(this: var WxSizer; index: csize; newitem: ptr WxSizerItem): bool {.
    cdecl, importcpp: "Replace", header: "wx.h".}
proc clear*(this: var WxSizer; deleteWindows: bool = false) {.cdecl, 
    importcpp: "Clear", header: "wx.h".}
proc deleteWindows*(this: var WxSizer) {.cdecl, importcpp: "DeleteWindows", 
    header: "wx.h".}
proc informFirstDirection*(this: var WxSizer; direction: cint; size: cint; 
                           availableOtherDir: cint): bool {.cdecl, 
    importcpp: "InformFirstDirection", header: "wx.h".}
proc setMinSize*(this: var WxSizer; width: cint; height: cint) {.cdecl, 
    importcpp: "SetMinSize", header: "wx.h".}
proc setMinSize*(this: var WxSizer; size: WxSize) {.cdecl, 
    importcpp: "SetMinSize", header: "wx.h".}
proc setItemMinSize*(this: var WxSizer; window: ptr WxWindow; width: cint; 
                     height: cint): bool {.cdecl, importcpp: "SetItemMinSize", 
    header: "wx.h".}
proc setItemMinSize*(this: var WxSizer; window: ptr WxWindow; size: WxSize): bool {.
    cdecl, importcpp: "SetItemMinSize", header: "wx.h".}
proc setItemMinSize*(this: var WxSizer; sizer: ptr WxSizer; width: cint; 
                     height: cint): bool {.cdecl, importcpp: "SetItemMinSize", 
    header: "wx.h".}
proc setItemMinSize*(this: var WxSizer; sizer: ptr WxSizer; size: WxSize): bool {.
    cdecl, importcpp: "SetItemMinSize", header: "wx.h".}
proc setItemMinSize*(this: var WxSizer; index: csize; width: cint; height: cint): bool {.
    cdecl, importcpp: "SetItemMinSize", header: "wx.h".}
proc setItemMinSize*(this: var WxSizer; index: csize; size: WxSize): bool {.
    cdecl, importcpp: "SetItemMinSize", header: "wx.h".}
proc getSize*(this: WxSizer): WxSize {.noSideEffect, cdecl, 
                                       importcpp: "GetSize", header: "wx.h".}
proc getPosition*(this: WxSizer): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetPosition", header: "wx.h".}
proc getMinSize*(this: var WxSizer): WxSize {.cdecl, importcpp: "GetMinSize", 
    header: "wx.h".}
proc calcMin*(this: var WxSizer): WxSize {.cdecl, importcpp: "CalcMin", 
    header: "wx.h".}
proc recalcSizes*(this: var WxSizer) {.cdecl, importcpp: "RecalcSizes", 
                                       header: "wx.h".}
proc layout*(this: var WxSizer) {.cdecl, importcpp: "Layout", header: "wx.h".}
proc computeFittingClientSize*(this: var WxSizer; window: ptr WxWindow): WxSize {.
    cdecl, importcpp: "ComputeFittingClientSize", header: "wx.h".}
proc computeFittingWindowSize*(this: var WxSizer; window: ptr WxWindow): WxSize {.
    cdecl, importcpp: "ComputeFittingWindowSize", header: "wx.h".}
proc fit*(this: var WxSizer; window: ptr WxWindow): WxSize {.cdecl, 
    importcpp: "Fit", header: "wx.h".}
proc fitInside*(this: var WxSizer; window: ptr WxWindow) {.cdecl, 
    importcpp: "FitInside", header: "wx.h".}
proc setSizeHints*(this: var WxSizer; window: ptr WxWindow) {.cdecl, 
    importcpp: "SetSizeHints", header: "wx.h".}
proc setDimension*(this: var WxSizer; pos: WxPoint; size: WxSize) {.cdecl, 
    importcpp: "SetDimension", header: "wx.h".}
proc setDimension*(this: var WxSizer; x: cint; y: cint; width: cint; 
                   height: cint) {.cdecl, importcpp: "SetDimension", 
                                   header: "wx.h".}
proc getItemCount*(this: WxSizer): csize {.noSideEffect, cdecl, 
    importcpp: "GetItemCount", header: "wx.h".}
proc isEmpty*(this: WxSizer): bool {.noSideEffect, cdecl, importcpp: "IsEmpty", 
                                     header: "wx.h".}
proc getItem*(this: var WxSizer; window: ptr WxWindow; recursive: bool = false): ptr WxSizerItem {.
    cdecl, importcpp: "GetItem", header: "wx.h".}
proc getItem*(this: var WxSizer; sizer: ptr WxSizer; recursive: bool = false): ptr WxSizerItem {.
    cdecl, importcpp: "GetItem", header: "wx.h".}
proc getItem*(this: var WxSizer; index: csize): ptr WxSizerItem {.cdecl, 
    importcpp: "GetItem", header: "wx.h".}
proc getItemById*(this: var WxSizer; id: cint; recursive: bool = false): ptr WxSizerItem {.
    cdecl, importcpp: "GetItemById", header: "wx.h".}
proc show*(this: var WxSizer; window: ptr WxWindow; show: bool = true; 
           recursive: bool = false): bool {.cdecl, importcpp: "Show", 
    header: "wx.h".}
proc show*(this: var WxSizer; sizer: ptr WxSizer; show: bool = true; 
           recursive: bool = false): bool {.cdecl, importcpp: "Show", 
    header: "wx.h".}
proc show*(this: var WxSizer; index: csize; show: bool = true): bool {.cdecl, 
    importcpp: "Show", header: "wx.h".}
proc hide*(this: var WxSizer; sizer: ptr WxSizer; recursive: bool = false): bool {.
    cdecl, importcpp: "Hide", header: "wx.h".}
proc hide*(this: var WxSizer; window: ptr WxWindow; recursive: bool = false): bool {.
    cdecl, importcpp: "Hide", header: "wx.h".}
proc hide*(this: var WxSizer; index: csize): bool {.cdecl, importcpp: "Hide", 
    header: "wx.h".}
proc isShown*(this: WxSizer; window: ptr WxWindow): bool {.noSideEffect, cdecl, 
    importcpp: "IsShown", header: "wx.h".}
proc isShown*(this: WxSizer; sizer: ptr WxSizer): bool {.noSideEffect, cdecl, 
    importcpp: "IsShown", header: "wx.h".}
proc isShown*(this: WxSizer; index: csize): bool {.noSideEffect, cdecl, 
    importcpp: "IsShown", header: "wx.h".}
proc showItems*(this: var WxSizer; show: bool) {.cdecl, importcpp: "ShowItems", 
    header: "wx.h".}
proc show*(this: var WxSizer; show: bool) {.cdecl, importcpp: "Show", 
    header: "wx.h".}
proc areAnyItemsShown*(this: WxSizer): bool {.noSideEffect, cdecl, 
    importcpp: "AreAnyItemsShown", header: "wx.h".}

type 
  WxGridSizer* {.importcpp: "wxGridSizer", header: "wx.h".} = object of WxSizer
  

proc constructwxGridSizer*(cols: cint; vgap: cint; hgap: cint): WxGridSizer {.
    cdecl, constructor, importcpp: "wxGridSizer(@)", header: "wx.h".}
proc constructwxGridSizer*(cols: cint; gap: WxSize = constructWxSize(0, 0)): WxGridSizer {.
    cdecl, constructor, importcpp: "wxGridSizer(@)", header: "wx.h".}
proc constructwxGridSizer*(rows: cint; cols: cint; vgap: cint; hgap: cint): WxGridSizer {.
    cdecl, constructor, importcpp: "wxGridSizer(@)", header: "wx.h".}
proc constructwxGridSizer*(rows: cint; cols: cint; gap: WxSize): WxGridSizer {.
    cdecl, constructor, importcpp: "wxGridSizer(@)", header: "wx.h".}
proc recalcSizes*(this: var WxGridSizer) {.cdecl, importcpp: "RecalcSizes", 
    header: "wx.h".}
proc calcMin*(this: var WxGridSizer): WxSize {.cdecl, importcpp: "CalcMin", 
    header: "wx.h".}
proc setCols*(this: var WxGridSizer; cols: cint) {.cdecl, importcpp: "SetCols", 
    header: "wx.h".}
proc setRows*(this: var WxGridSizer; rows: cint) {.cdecl, importcpp: "SetRows", 
    header: "wx.h".}
proc setVGap*(this: var WxGridSizer; gap: cint) {.cdecl, importcpp: "SetVGap", 
    header: "wx.h".}
proc setHGap*(this: var WxGridSizer; gap: cint) {.cdecl, importcpp: "SetHGap", 
    header: "wx.h".}
proc getCols*(this: WxGridSizer): cint {.noSideEffect, cdecl, 
    importcpp: "GetCols", header: "wx.h".}
proc getRows*(this: WxGridSizer): cint {.noSideEffect, cdecl, 
    importcpp: "GetRows", header: "wx.h".}
proc getVGap*(this: WxGridSizer): cint {.noSideEffect, cdecl, 
    importcpp: "GetVGap", header: "wx.h".}
proc getHGap*(this: WxGridSizer): cint {.noSideEffect, cdecl, 
    importcpp: "GetHGap", header: "wx.h".}
proc getEffectiveColsCount*(this: WxGridSizer): cint {.noSideEffect, cdecl, 
    importcpp: "GetEffectiveColsCount", header: "wx.h".}
proc getEffectiveRowsCount*(this: WxGridSizer): cint {.noSideEffect, cdecl, 
    importcpp: "GetEffectiveRowsCount", header: "wx.h".}
proc calcRowsCols*(this: WxGridSizer; rows: var cint; cols: var cint): cint {.
    noSideEffect, cdecl, importcpp: "CalcRowsCols", header: "wx.h".}

type 
  WxFlexSizerGrowMode* {.size: sizeof(cint), 
                         importcpp: "wxSizer::wxFlexSizerGrowMode", 
                         header: "wx.h".} = enum 
    wxFLEX_GROWMODE_NONE, wxFLEX_GROWMODE_SPECIFIED, wxFLEX_GROWMODE_ALL


type 
  WxFlexGridSizer* {.importcpp: "wxFlexGridSizer", header: "wx.h".} = object of WxGridSizer
  

proc constructwxFlexGridSizer*(cols: cint; vgap: cint; hgap: cint): WxFlexGridSizer {.
    cdecl, constructor, importcpp: "wxFlexGridSizer(@)", header: "wx.h".}
proc constructwxFlexGridSizer*(cols: cint; gap: WxSize = constructWxSize(0, 0)): WxFlexGridSizer {.
    cdecl, constructor, importcpp: "wxFlexGridSizer(@)", header: "wx.h".}
proc constructwxFlexGridSizer*(rows: cint; cols: cint; vgap: cint; hgap: cint): WxFlexGridSizer {.
    cdecl, constructor, importcpp: "wxFlexGridSizer(@)", header: "wx.h".}
proc constructwxFlexGridSizer*(rows: cint; cols: cint; gap: WxSize): WxFlexGridSizer {.
    cdecl, constructor, importcpp: "wxFlexGridSizer(@)", header: "wx.h".}
proc destroywxFlexGridSizer*(this: var WxFlexGridSizer) {.cdecl, 
    importcpp: "#.~wxFlexGridSizer()", header: "wx.h".}
proc addGrowableRow*(this: var WxFlexGridSizer; idx: csize; proportion: cint = 0) {.
    cdecl, importcpp: "AddGrowableRow", header: "wx.h".}
proc removeGrowableRow*(this: var WxFlexGridSizer; idx: csize) {.cdecl, 
    importcpp: "RemoveGrowableRow", header: "wx.h".}
proc addGrowableCol*(this: var WxFlexGridSizer; idx: csize; proportion: cint = 0) {.
    cdecl, importcpp: "AddGrowableCol", header: "wx.h".}
proc removeGrowableCol*(this: var WxFlexGridSizer; idx: csize) {.cdecl, 
    importcpp: "RemoveGrowableCol", header: "wx.h".}
proc isRowGrowable*(this: var WxFlexGridSizer; idx: csize): bool {.cdecl, 
    importcpp: "IsRowGrowable", header: "wx.h".}
proc isColGrowable*(this: var WxFlexGridSizer; idx: csize): bool {.cdecl, 
    importcpp: "IsColGrowable", header: "wx.h".}
proc setFlexibleDirection*(this: var WxFlexGridSizer; direction: cint) {.cdecl, 
    importcpp: "SetFlexibleDirection", header: "wx.h".}
proc getFlexibleDirection*(this: WxFlexGridSizer): cint {.noSideEffect, cdecl, 
    importcpp: "GetFlexibleDirection", header: "wx.h".}
proc setNonFlexibleGrowMode*(this: var WxFlexGridSizer; 
                             mode: WxFlexSizerGrowMode) {.cdecl, 
    importcpp: "SetNonFlexibleGrowMode", header: "wx.h".}
proc getNonFlexibleGrowMode*(this: WxFlexGridSizer): WxFlexSizerGrowMode {.
    noSideEffect, cdecl, importcpp: "GetNonFlexibleGrowMode", header: "wx.h".}
proc getRowHeights*(this: WxFlexGridSizer): WxArrayInt {.noSideEffect, cdecl, 
    importcpp: "GetRowHeights", header: "wx.h".}
proc getColWidths*(this: WxFlexGridSizer): WxArrayInt {.noSideEffect, cdecl, 
    importcpp: "GetColWidths", header: "wx.h".}
proc recalcSizes*(this: var WxFlexGridSizer) {.cdecl, importcpp: "RecalcSizes", 
    header: "wx.h".}
proc calcMin*(this: var WxFlexGridSizer): WxSize {.cdecl, importcpp: "CalcMin", 
    header: "wx.h".}

type 
  WxBoxSizer* {.importcpp: "wxBoxSizer", header: "wx.h".} = object of WxSizer
  

proc constructwxBoxSizer*(orient: cint): WxBoxSizer {.cdecl, constructor, 
    importcpp: "wxBoxSizer(@)", header: "wx.h".}
proc addSpacer*(this: var WxBoxSizer; size: cint): ptr WxSizerItem {.cdecl, 
    importcpp: "AddSpacer", header: "wx.h".}
proc getOrientation*(this: WxBoxSizer): cint {.noSideEffect, cdecl, 
    importcpp: "GetOrientation", header: "wx.h".}
proc isVertical*(this: WxBoxSizer): bool {.noSideEffect, cdecl, 
    importcpp: "IsVertical", header: "wx.h".}
proc setOrientation*(this: var WxBoxSizer; orient: cint) {.cdecl, 
    importcpp: "SetOrientation", header: "wx.h".}
proc calcMin*(this: var WxBoxSizer): WxSize {.cdecl, importcpp: "CalcMin", 
    header: "wx.h".}
proc recalcSizes*(this: var WxBoxSizer) {.cdecl, importcpp: "RecalcSizes", 
    header: "wx.h".}

type 
  WxStaticBox* {.importcpp: "wxStaticBox", header: "wx.h".} = object 
  
  WxStaticBoxSizer* {.importcpp: "wxStaticBoxSizer", header: "wx.h".} = object of WxBoxSizer
  

proc constructwxStaticBoxSizer*(box: ptr WxStaticBox; orient: cint): WxStaticBoxSizer {.
    cdecl, constructor, importcpp: "wxStaticBoxSizer(@)", header: "wx.h".}
proc constructwxStaticBoxSizer*(orient: cint; win: ptr WxWindow; 
                                label: WxString = wxEmptyString): WxStaticBoxSizer {.
    cdecl, constructor, importcpp: "wxStaticBoxSizer(@)", header: "wx.h".}
proc destroywxStaticBoxSizer*(this: var WxStaticBoxSizer) {.cdecl, 
    importcpp: "#.~wxStaticBoxSizer()", header: "wx.h".}
proc recalcSizes*(this: var WxStaticBoxSizer) {.cdecl, importcpp: "RecalcSizes", 
    header: "wx.h".}
proc calcMin*(this: var WxStaticBoxSizer): WxSize {.cdecl, importcpp: "CalcMin", 
    header: "wx.h".}
proc getStaticBox*(this: WxStaticBoxSizer): ptr WxStaticBox {.noSideEffect, 
    cdecl, importcpp: "GetStaticBox", header: "wx.h".}
proc showItems*(this: var WxStaticBoxSizer; show: bool) {.cdecl, 
    importcpp: "ShowItems", header: "wx.h".}
proc areAnyItemsShown*(this: WxStaticBoxSizer): bool {.noSideEffect, cdecl, 
    importcpp: "AreAnyItemsShown", header: "wx.h".}
proc detach*(this: var WxStaticBoxSizer; window: ptr WxWindow): bool {.cdecl, 
    importcpp: "Detach", header: "wx.h".}
proc detach*(this: var WxStaticBoxSizer; sizer: ptr WxSizer): bool {.cdecl, 
    importcpp: "Detach", header: "wx.h".}
proc detach*(this: var WxStaticBoxSizer; index: cint): bool {.cdecl, 
    importcpp: "Detach", header: "wx.h".}

type 
  WxStdDialogButtonSizer* {.importcpp: "wxStdDialogButtonSizer", header: "wx.h".} = object of WxBoxSizer
  

proc constructwxStdDialogButtonSizer*(): WxStdDialogButtonSizer {.cdecl, 
    constructor, importcpp: "wxStdDialogButtonSizer(@)", header: "wx.h".}
proc addButton*(this: var WxStdDialogButtonSizer; button: ptr WxButton) {.cdecl, 
    importcpp: "AddButton", header: "wx.h".}
proc setAffirmativeButton*(this: var WxStdDialogButtonSizer; 
                           button: ptr WxButton) {.cdecl, 
    importcpp: "SetAffirmativeButton", header: "wx.h".}
proc setNegativeButton*(this: var WxStdDialogButtonSizer; button: ptr WxButton) {.
    cdecl, importcpp: "SetNegativeButton", header: "wx.h".}
proc setCancelButton*(this: var WxStdDialogButtonSizer; button: ptr WxButton) {.
    cdecl, importcpp: "SetCancelButton", header: "wx.h".}
proc realize*(this: var WxStdDialogButtonSizer) {.cdecl, importcpp: "Realize", 
    header: "wx.h".}
proc getAffirmativeButton*(this: WxStdDialogButtonSizer): ptr WxButton {.
    noSideEffect, cdecl, importcpp: "GetAffirmativeButton", header: "wx.h".}
proc getApplyButton*(this: WxStdDialogButtonSizer): ptr WxButton {.noSideEffect, 
    cdecl, importcpp: "GetApplyButton", header: "wx.h".}
proc getNegativeButton*(this: WxStdDialogButtonSizer): ptr WxButton {.
    noSideEffect, cdecl, importcpp: "GetNegativeButton", header: "wx.h".}
proc getCancelButton*(this: WxStdDialogButtonSizer): ptr WxButton {.
    noSideEffect, cdecl, importcpp: "GetCancelButton", header: "wx.h".}
proc getHelpButton*(this: WxStdDialogButtonSizer): ptr WxButton {.noSideEffect, 
    cdecl, importcpp: "GetHelpButton", header: "wx.h".}