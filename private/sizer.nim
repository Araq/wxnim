


discard "forward decl of wxButton"
discard "forward decl of wxBoxSizer"
discard "forward decl of wxSizerItem"
discard "forward decl of wxSizer"
type 
  WxSizerFlags* {.importcpp: "wxSizerFlags", header: wxh.} = object 
  

proc constructwxSizerFlags*(proportion: cint = 0): WxSizerFlags {.cdecl, 
    constructor, importcpp: "wxSizerFlags(@)", header: wxh.}
proc proportion*(this: var WxSizerFlags; proportion: cint): var WxSizerFlags {.
    cdecl, importcpp: "Proportion", header: wxh.}
proc expand*(this: var WxSizerFlags): var WxSizerFlags {.cdecl, 
    importcpp: "Expand", header: wxh.}
proc align*(this: var WxSizerFlags; alignment: cint): var WxSizerFlags {.cdecl, 
    importcpp: "Align", header: wxh.}
proc centre*(this: var WxSizerFlags): var WxSizerFlags {.cdecl, 
    importcpp: "Centre", header: wxh.}
proc center*(this: var WxSizerFlags): var WxSizerFlags {.cdecl, 
    importcpp: "Center", header: wxh.}
proc top*(this: var WxSizerFlags): var WxSizerFlags {.cdecl, importcpp: "Top", 
    header: wxh.}
proc left*(this: var WxSizerFlags): var WxSizerFlags {.cdecl, importcpp: "Left", 
    header: wxh.}
proc right*(this: var WxSizerFlags): var WxSizerFlags {.cdecl, 
    importcpp: "Right", header: wxh.}
proc bottom*(this: var WxSizerFlags): var WxSizerFlags {.cdecl, 
    importcpp: "Bottom", header: wxh.}
proc getDefaultBorder*(): cint {.cdecl, importcpp: "wxSizerFlags::GetDefaultBorder(@)", 
                                 header: wxh.}
proc border*(this: var WxSizerFlags; direction: cint; borderInPixels: cint): var WxSizerFlags {.
    cdecl, importcpp: "Border", header: wxh.}
proc border*(this: var WxSizerFlags; direction = wxALL): var WxSizerFlags {.
    cdecl, importcpp: "Border", header: wxh.}
proc doubleBorder*(this: var WxSizerFlags; direction = wxALL): var WxSizerFlags {.
    cdecl, importcpp: "DoubleBorder", header: wxh.}
proc tripleBorder*(this: var WxSizerFlags; direction = wxALL): var WxSizerFlags {.
    cdecl, importcpp: "TripleBorder", header: wxh.}
proc horzBorder*(this: var WxSizerFlags): var WxSizerFlags {.cdecl, 
    importcpp: "HorzBorder", header: wxh.}
proc doubleHorzBorder*(this: var WxSizerFlags): var WxSizerFlags {.cdecl, 
    importcpp: "DoubleHorzBorder", header: wxh.}
proc shaped*(this: var WxSizerFlags): var WxSizerFlags {.cdecl, 
    importcpp: "Shaped", header: wxh.}
proc fixedMinSize*(this: var WxSizerFlags): var WxSizerFlags {.cdecl, 
    importcpp: "FixedMinSize", header: wxh.}
proc reserveSpaceEvenIfHidden*(this: var WxSizerFlags): var WxSizerFlags {.
    cdecl, importcpp: "ReserveSpaceEvenIfHidden", header: wxh.}
proc getProportion*(this: WxSizerFlags): cint {.noSideEffect, cdecl, 
    importcpp: "GetProportion", header: wxh.}
proc getFlags*(this: WxSizerFlags): cint {.noSideEffect, cdecl, 
    importcpp: "GetFlags", header: wxh.}
proc getBorderInPixels*(this: WxSizerFlags): cint {.noSideEffect, cdecl, 
    importcpp: "GetBorderInPixels", header: wxh.}

type 
  WxSizerSpacer* {.importcpp: "wxSizerSpacer", header: wxh.} = object 
  

proc constructwxSizerSpacer*(size: WxSize): WxSizerSpacer {.cdecl, constructor, 
    importcpp: "wxSizerSpacer(@)", header: wxh.}
proc setSize*(this: var WxSizerSpacer; size: WxSize) {.cdecl, 
    importcpp: "SetSize", header: wxh.}
proc getSize*(this: WxSizerSpacer): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetSize", header: wxh.}
proc show*(this: var WxSizerSpacer; show: bool) {.cdecl, importcpp: "Show", 
    header: wxh.}
proc isShown*(this: WxSizerSpacer): bool {.noSideEffect, cdecl, 
    importcpp: "IsShown", header: wxh.}

type 
  WxSizerItem* {.importcpp: "wxSizerItem", header: wxh.} = object of WxObject
  

proc constructwxSizerItem*(window: ptr WxWindow; proportion: cint = 0; 
                           flag: cint = 0; border: cint = 0; 
                           userData: ptr WxObject = nil): WxSizerItem {.cdecl, 
    constructor, importcpp: "wxSizerItem(@)", header: wxh.}
proc constructwxSizerItem*(window: ptr WxWindow; flags: WxSizerFlags): WxSizerItem {.
    cdecl, constructor, importcpp: "wxSizerItem(@)", header: wxh.}
proc constructwxSizerItem*(sizer: ptr WxSizer; proportion: cint = 0; 
                           flag: cint = 0; border: cint = 0; 
                           userData: ptr WxObject = nil): WxSizerItem {.cdecl, 
    constructor, importcpp: "wxSizerItem(@)", header: wxh.}
proc constructwxSizerItem*(sizer: ptr WxSizer; flags: WxSizerFlags): WxSizerItem {.
    cdecl, constructor, importcpp: "wxSizerItem(@)", header: wxh.}
proc constructwxSizerItem*(width: cint; height: cint; proportion: cint = 0; 
                           flag: cint = 0; border: cint = 0; 
                           userData: ptr WxObject = nil): WxSizerItem {.cdecl, 
    constructor, importcpp: "wxSizerItem(@)", header: wxh.}
proc constructwxSizerItem*(width: cint; height: cint; flags: WxSizerFlags): WxSizerItem {.
    cdecl, constructor, importcpp: "wxSizerItem(@)", header: wxh.}
proc constructwxSizerItem*(): WxSizerItem {.cdecl, constructor, 
    importcpp: "wxSizerItem(@)", header: wxh.}
proc destroywxSizerItem*(this: var WxSizerItem) {.cdecl, 
    importcpp: "#.~wxSizerItem()", header: wxh.}
proc deleteWindows*(this: var WxSizerItem) {.cdecl, importcpp: "DeleteWindows", 
    header: wxh.}
proc detachSizer*(this: var WxSizerItem) {.cdecl, importcpp: "DetachSizer", 
    header: wxh.}
proc getSize*(this: WxSizerItem): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetSize", header: wxh.}
proc calcMin*(this: var WxSizerItem): WxSize {.cdecl, importcpp: "CalcMin", 
    header: wxh.}
proc setDimension*(this: var WxSizerItem; pos: WxPoint; size: WxSize) {.cdecl, 
    importcpp: "SetDimension", header: wxh.}
proc getMinSize*(this: WxSizerItem): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetMinSize", header: wxh.}
proc getMinSizeWithBorder*(this: WxSizerItem): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetMinSizeWithBorder", header: wxh.}
proc getMaxSize*(this: WxSizerItem): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetMaxSize", header: wxh.}
proc getMaxSizeWithBorder*(this: WxSizerItem): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetMaxSizeWithBorder", header: wxh.}
proc setMinSize*(this: var WxSizerItem; size: WxSize) {.cdecl, 
    importcpp: "SetMinSize", header: wxh.}
proc setMinSize*(this: var WxSizerItem; x: cint; y: cint) {.cdecl, 
    importcpp: "SetMinSize", header: wxh.}
proc setInitSize*(this: var WxSizerItem; x: cint; y: cint) {.cdecl, 
    importcpp: "SetInitSize", header: wxh.}
proc setRatio*(this: var WxSizerItem; width: cint; height: cint) {.cdecl, 
    importcpp: "SetRatio", header: wxh.}
proc setRatio*(this: var WxSizerItem; size: WxSize) {.cdecl, 
    importcpp: "SetRatio", header: wxh.}
proc setRatio*(this: var WxSizerItem; ratio: cfloat) {.cdecl, 
    importcpp: "SetRatio", header: wxh.}
proc getRatio*(this: WxSizerItem): cfloat {.noSideEffect, cdecl, 
    importcpp: "GetRatio", header: wxh.}
proc getRect*(this: var WxSizerItem): WxRect {.cdecl, importcpp: "GetRect", 
    header: wxh.}
proc setId*(this: var WxSizerItem; id: cint) {.cdecl, importcpp: "SetId", 
    header: wxh.}
proc getId*(this: WxSizerItem): cint {.noSideEffect, cdecl, importcpp: "GetId", 
                                       header: wxh.}
proc isWindow*(this: WxSizerItem): bool {.noSideEffect, cdecl, 
    importcpp: "IsWindow", header: wxh.}
proc isSizer*(this: WxSizerItem): bool {.noSideEffect, cdecl, 
    importcpp: "IsSizer", header: wxh.}
proc isSpacer*(this: WxSizerItem): bool {.noSideEffect, cdecl, 
    importcpp: "IsSpacer", header: wxh.}
proc setProportion*(this: var WxSizerItem; proportion: cint) {.cdecl, 
    importcpp: "SetProportion", header: wxh.}
proc getProportion*(this: WxSizerItem): cint {.noSideEffect, cdecl, 
    importcpp: "GetProportion", header: wxh.}
proc setFlag*(this: var WxSizerItem; flag: cint) {.cdecl, importcpp: "SetFlag", 
    header: wxh.}
proc getFlag*(this: WxSizerItem): cint {.noSideEffect, cdecl, 
    importcpp: "GetFlag", header: wxh.}
proc setBorder*(this: var WxSizerItem; border: cint) {.cdecl, 
    importcpp: "SetBorder", header: wxh.}
proc getBorder*(this: WxSizerItem): cint {.noSideEffect, cdecl, 
    importcpp: "GetBorder", header: wxh.}
proc getWindow*(this: WxSizerItem): ptr WxWindow {.noSideEffect, cdecl, 
    importcpp: "GetWindow", header: wxh.}
proc getSizer*(this: WxSizerItem): ptr WxSizer {.noSideEffect, cdecl, 
    importcpp: "GetSizer", header: wxh.}
proc getSpacer*(this: WxSizerItem): WxSize {.noSideEffect, cdecl, 
    importcpp: "GetSpacer", header: wxh.}
proc isShown*(this: WxSizerItem): bool {.noSideEffect, cdecl, 
    importcpp: "IsShown", header: wxh.}
proc show*(this: var WxSizerItem; show: bool) {.cdecl, importcpp: "Show", 
    header: wxh.}
proc setUserData*(this: var WxSizerItem; userData: ptr WxObject) {.cdecl, 
    importcpp: "SetUserData", header: wxh.}
proc getUserData*(this: WxSizerItem): ptr WxObject {.noSideEffect, cdecl, 
    importcpp: "GetUserData", header: wxh.}
proc getPosition*(this: WxSizerItem): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetPosition", header: wxh.}
proc informFirstDirection*(this: var WxSizerItem; direction: cint; size: cint; 
                           availableOtherDir: cint = - 1): bool {.cdecl, 
    importcpp: "InformFirstDirection", header: wxh.}
proc assignWindow*(this: var WxSizerItem; window: ptr WxWindow) {.cdecl, 
    importcpp: "AssignWindow", header: wxh.}
proc assignSizer*(this: var WxSizerItem; sizer: ptr WxSizer) {.cdecl, 
    importcpp: "AssignSizer", header: wxh.}
proc assignSpacer*(this: var WxSizerItem; size: WxSize) {.cdecl, 
    importcpp: "AssignSpacer", header: wxh.}
proc assignSpacer*(this: var WxSizerItem; w: cint; h: cint) {.cdecl, 
    importcpp: "AssignSpacer", header: wxh.}

type 
  WxSizer* {.importcpp: "wxSizer", header: wxh.} = object of WxObject
  

proc constructwxSizer*(): WxSizer {.cdecl, constructor, importcpp: "wxSizer(@)", 
                                    header: wxh.}
proc destroywxSizer*(this: var WxSizer) {.cdecl, importcpp: "#.~wxSizer()", 
    header: wxh.}
proc add*(this: var WxSizer; window: ptr WxWindow; proportion: cint = 0; 
          flag: cint = 0; border: cint = 0; userData: ptr WxObject = nil): ptr WxSizerItem {.
    cdecl, importcpp: "Add", header: wxh.}
proc add*(this: var WxSizer; sizer: ptr WxSizer; proportion: cint = 0; 
          flag: cint = 0; border: cint = 0; userData: ptr WxObject = nil): ptr WxSizerItem {.
    cdecl, importcpp: "Add", header: wxh.}
proc add*(this: var WxSizer; width: cint; height: cint; proportion: cint = 0; 
          flag: cint = 0; border: cint = 0; userData: ptr WxObject = nil): ptr WxSizerItem {.
    cdecl, importcpp: "Add", header: wxh.}
proc add*(this: var WxSizer; window: ptr WxWindow; flags: WxSizerFlags): ptr WxSizerItem {.
    cdecl, importcpp: "Add", header: wxh.}
proc add*(this: var WxSizer; sizer: ptr WxSizer; flags: WxSizerFlags): ptr WxSizerItem {.
    cdecl, importcpp: "Add", header: wxh.}
proc add*(this: var WxSizer; width: cint; height: cint; flags: WxSizerFlags): ptr WxSizerItem {.
    cdecl, importcpp: "Add", header: wxh.}
proc add*(this: var WxSizer; item: ptr WxSizerItem): ptr WxSizerItem {.cdecl, 
    importcpp: "Add", header: wxh.}
proc addSpacer*(this: var WxSizer; size: cint): ptr WxSizerItem {.cdecl, 
    importcpp: "AddSpacer", header: wxh.}
proc addStretchSpacer*(this: var WxSizer; prop: cint = 1): ptr WxSizerItem {.
    cdecl, importcpp: "AddStretchSpacer", header: wxh.}
proc insert*(this: var WxSizer; index: csize; window: ptr WxWindow; 
             proportion: cint = 0; flag: cint = 0; border: cint = 0; 
             userData: ptr WxObject = nil): ptr WxSizerItem {.cdecl, 
    importcpp: "Insert", header: wxh.}
proc insert*(this: var WxSizer; index: csize; sizer: ptr WxSizer; 
             proportion: cint = 0; flag: cint = 0; border: cint = 0; 
             userData: ptr WxObject = nil): ptr WxSizerItem {.cdecl, 
    importcpp: "Insert", header: wxh.}
proc insert*(this: var WxSizer; index: csize; width: cint; height: cint; 
             proportion: cint = 0; flag: cint = 0; border: cint = 0; 
             userData: ptr WxObject = nil): ptr WxSizerItem {.cdecl, 
    importcpp: "Insert", header: wxh.}
proc insert*(this: var WxSizer; index: csize; window: ptr WxWindow; 
             flags: WxSizerFlags): ptr WxSizerItem {.cdecl, importcpp: "Insert", 
    header: wxh.}
proc insert*(this: var WxSizer; index: csize; sizer: ptr WxSizer; 
             flags: WxSizerFlags): ptr WxSizerItem {.cdecl, importcpp: "Insert", 
    header: wxh.}
proc insert*(this: var WxSizer; index: csize; width: cint; height: cint; 
             flags: WxSizerFlags): ptr WxSizerItem {.cdecl, importcpp: "Insert", 
    header: wxh.}
proc insert*(this: var WxSizer; index: csize; item: ptr WxSizerItem): ptr WxSizerItem {.
    cdecl, importcpp: "Insert", header: wxh.}
proc insertSpacer*(this: var WxSizer; index: csize; size: cint): ptr WxSizerItem {.
    cdecl, importcpp: "InsertSpacer", header: wxh.}
proc insertStretchSpacer*(this: var WxSizer; index: csize; prop: cint = 1): ptr WxSizerItem {.
    cdecl, importcpp: "InsertStretchSpacer", header: wxh.}
proc prepend*(this: var WxSizer; window: ptr WxWindow; proportion: cint = 0; 
              flag: cint = 0; border: cint = 0; userData: ptr WxObject = nil): ptr WxSizerItem {.
    cdecl, importcpp: "Prepend", header: wxh.}
proc prepend*(this: var WxSizer; sizer: ptr WxSizer; proportion: cint = 0; 
              flag: cint = 0; border: cint = 0; userData: ptr WxObject = nil): ptr WxSizerItem {.
    cdecl, importcpp: "Prepend", header: wxh.}
proc prepend*(this: var WxSizer; width: cint; height: cint; 
              proportion: cint = 0; flag: cint = 0; border: cint = 0; 
              userData: ptr WxObject = nil): ptr WxSizerItem {.cdecl, 
    importcpp: "Prepend", header: wxh.}
proc prepend*(this: var WxSizer; window: ptr WxWindow; flags: WxSizerFlags): ptr WxSizerItem {.
    cdecl, importcpp: "Prepend", header: wxh.}
proc prepend*(this: var WxSizer; sizer: ptr WxSizer; flags: WxSizerFlags): ptr WxSizerItem {.
    cdecl, importcpp: "Prepend", header: wxh.}
proc prepend*(this: var WxSizer; width: cint; height: cint; flags: WxSizerFlags): ptr WxSizerItem {.
    cdecl, importcpp: "Prepend", header: wxh.}
proc prepend*(this: var WxSizer; item: ptr WxSizerItem): ptr WxSizerItem {.
    cdecl, importcpp: "Prepend", header: wxh.}
proc prependSpacer*(this: var WxSizer; size: cint): ptr WxSizerItem {.cdecl, 
    importcpp: "PrependSpacer", header: wxh.}
proc prependStretchSpacer*(this: var WxSizer; prop: cint = 1): ptr WxSizerItem {.
    cdecl, importcpp: "PrependStretchSpacer", header: wxh.}
proc setContainingWindow*(this: var WxSizer; window: ptr WxWindow) {.cdecl, 
    importcpp: "SetContainingWindow", header: wxh.}
proc getContainingWindow*(this: WxSizer): ptr WxWindow {.noSideEffect, cdecl, 
    importcpp: "GetContainingWindow", header: wxh.}
proc remove*(this: var WxSizer; sizer: ptr WxSizer): bool {.cdecl, 
    importcpp: "Remove", header: wxh.}
proc remove*(this: var WxSizer; index: cint): bool {.cdecl, importcpp: "Remove", 
    header: wxh.}
proc detach*(this: var WxSizer; window: ptr WxWindow): bool {.cdecl, 
    importcpp: "Detach", header: wxh.}
proc detach*(this: var WxSizer; sizer: ptr WxSizer): bool {.cdecl, 
    importcpp: "Detach", header: wxh.}
proc detach*(this: var WxSizer; index: cint): bool {.cdecl, importcpp: "Detach", 
    header: wxh.}
proc replace*(this: var WxSizer; oldwin: ptr WxWindow; newwin: ptr WxWindow; 
              recursive: bool = false): bool {.cdecl, importcpp: "Replace", 
    header: wxh.}
proc replace*(this: var WxSizer; oldsz: ptr WxSizer; newsz: ptr WxSizer; 
              recursive: bool = false): bool {.cdecl, importcpp: "Replace", 
    header: wxh.}
proc replace*(this: var WxSizer; index: csize; newitem: ptr WxSizerItem): bool {.
    cdecl, importcpp: "Replace", header: wxh.}
proc clear*(this: var WxSizer; deleteWindows: bool = false) {.cdecl, 
    importcpp: "Clear", header: wxh.}
proc deleteWindows*(this: var WxSizer) {.cdecl, importcpp: "DeleteWindows", 
    header: wxh.}
proc informFirstDirection*(this: var WxSizer; direction: cint; size: cint; 
                           availableOtherDir: cint): bool {.cdecl, 
    importcpp: "InformFirstDirection", header: wxh.}
proc setMinSize*(this: var WxSizer; width: cint; height: cint) {.cdecl, 
    importcpp: "SetMinSize", header: wxh.}
proc setMinSize*(this: var WxSizer; size: WxSize) {.cdecl, 
    importcpp: "SetMinSize", header: wxh.}
proc setItemMinSize*(this: var WxSizer; window: ptr WxWindow; width: cint; 
                     height: cint): bool {.cdecl, importcpp: "SetItemMinSize", 
    header: wxh.}
proc setItemMinSize*(this: var WxSizer; window: ptr WxWindow; size: WxSize): bool {.
    cdecl, importcpp: "SetItemMinSize", header: wxh.}
proc setItemMinSize*(this: var WxSizer; sizer: ptr WxSizer; width: cint; 
                     height: cint): bool {.cdecl, importcpp: "SetItemMinSize", 
    header: wxh.}
proc setItemMinSize*(this: var WxSizer; sizer: ptr WxSizer; size: WxSize): bool {.
    cdecl, importcpp: "SetItemMinSize", header: wxh.}
proc setItemMinSize*(this: var WxSizer; index: csize; width: cint; height: cint): bool {.
    cdecl, importcpp: "SetItemMinSize", header: wxh.}
proc setItemMinSize*(this: var WxSizer; index: csize; size: WxSize): bool {.
    cdecl, importcpp: "SetItemMinSize", header: wxh.}
proc getSize*(this: WxSizer): WxSize {.noSideEffect, cdecl, 
                                       importcpp: "GetSize", header: wxh.}
proc getPosition*(this: WxSizer): WxPoint {.noSideEffect, cdecl, 
    importcpp: "GetPosition", header: wxh.}
proc getMinSize*(this: var WxSizer): WxSize {.cdecl, importcpp: "GetMinSize", 
    header: wxh.}
proc calcMin*(this: var WxSizer): WxSize {.cdecl, importcpp: "CalcMin", 
    header: wxh.}
proc recalcSizes*(this: var WxSizer) {.cdecl, importcpp: "RecalcSizes", 
                                       header: wxh.}
proc layout*(this: var WxSizer) {.cdecl, importcpp: "Layout", header: wxh.}
proc computeFittingClientSize*(this: var WxSizer; window: ptr WxWindow): WxSize {.
    cdecl, importcpp: "ComputeFittingClientSize", header: wxh.}
proc computeFittingWindowSize*(this: var WxSizer; window: ptr WxWindow): WxSize {.
    cdecl, importcpp: "ComputeFittingWindowSize", header: wxh.}
proc fit*(this: var WxSizer; window: ptr WxWindow): WxSize {.cdecl, 
    importcpp: "Fit", header: wxh.}
proc fitInside*(this: var WxSizer; window: ptr WxWindow) {.cdecl, 
    importcpp: "FitInside", header: wxh.}
proc setSizeHints*(this: var WxSizer; window: ptr WxWindow) {.cdecl, 
    importcpp: "SetSizeHints", header: wxh.}
proc setDimension*(this: var WxSizer; pos: WxPoint; size: WxSize) {.cdecl, 
    importcpp: "SetDimension", header: wxh.}
proc setDimension*(this: var WxSizer; x: cint; y: cint; width: cint; 
                   height: cint) {.cdecl, importcpp: "SetDimension", header: wxh.}
proc getItemCount*(this: WxSizer): csize {.noSideEffect, cdecl, 
    importcpp: "GetItemCount", header: wxh.}
proc isEmpty*(this: WxSizer): bool {.noSideEffect, cdecl, importcpp: "IsEmpty", 
                                     header: wxh.}
proc getItem*(this: var WxSizer; window: ptr WxWindow; recursive: bool = false): ptr WxSizerItem {.
    cdecl, importcpp: "GetItem", header: wxh.}
proc getItem*(this: var WxSizer; sizer: ptr WxSizer; recursive: bool = false): ptr WxSizerItem {.
    cdecl, importcpp: "GetItem", header: wxh.}
proc getItem*(this: var WxSizer; index: csize): ptr WxSizerItem {.cdecl, 
    importcpp: "GetItem", header: wxh.}
proc getItemById*(this: var WxSizer; id: cint; recursive: bool = false): ptr WxSizerItem {.
    cdecl, importcpp: "GetItemById", header: wxh.}
proc show*(this: var WxSizer; window: ptr WxWindow; show: bool = true; 
           recursive: bool = false): bool {.cdecl, importcpp: "Show", 
    header: wxh.}
proc show*(this: var WxSizer; sizer: ptr WxSizer; show: bool = true; 
           recursive: bool = false): bool {.cdecl, importcpp: "Show", 
    header: wxh.}
proc show*(this: var WxSizer; index: csize; show: bool = true): bool {.cdecl, 
    importcpp: "Show", header: wxh.}
proc hide*(this: var WxSizer; sizer: ptr WxSizer; recursive: bool = false): bool {.
    cdecl, importcpp: "Hide", header: wxh.}
proc hide*(this: var WxSizer; window: ptr WxWindow; recursive: bool = false): bool {.
    cdecl, importcpp: "Hide", header: wxh.}
proc hide*(this: var WxSizer; index: csize): bool {.cdecl, importcpp: "Hide", 
    header: wxh.}
proc isShown*(this: WxSizer; window: ptr WxWindow): bool {.noSideEffect, cdecl, 
    importcpp: "IsShown", header: wxh.}
proc isShown*(this: WxSizer; sizer: ptr WxSizer): bool {.noSideEffect, cdecl, 
    importcpp: "IsShown", header: wxh.}
proc isShown*(this: WxSizer; index: csize): bool {.noSideEffect, cdecl, 
    importcpp: "IsShown", header: wxh.}
proc showItems*(this: var WxSizer; show: bool) {.cdecl, importcpp: "ShowItems", 
    header: wxh.}
proc show*(this: var WxSizer; show: bool) {.cdecl, importcpp: "Show", 
    header: wxh.}
proc areAnyItemsShown*(this: WxSizer): bool {.noSideEffect, cdecl, 
    importcpp: "AreAnyItemsShown", header: wxh.}

type 
  WxGridSizer* {.importcpp: "wxGridSizer", header: wxh.} = object of WxSizer
  

proc constructwxGridSizer*(cols: cint; vgap: cint; hgap: cint): WxGridSizer {.
    cdecl, constructor, importcpp: "wxGridSizer(@)", header: wxh.}
proc constructwxGridSizer*(cols: cint; gap: WxSize = constructWxSize(0, 0)): WxGridSizer {.
    cdecl, constructor, importcpp: "wxGridSizer(@)", header: wxh.}
proc constructwxGridSizer*(rows: cint; cols: cint; vgap: cint; hgap: cint): WxGridSizer {.
    cdecl, constructor, importcpp: "wxGridSizer(@)", header: wxh.}
proc constructwxGridSizer*(rows: cint; cols: cint; gap: WxSize): WxGridSizer {.
    cdecl, constructor, importcpp: "wxGridSizer(@)", header: wxh.}
proc recalcSizes*(this: var WxGridSizer) {.cdecl, importcpp: "RecalcSizes", 
    header: wxh.}
proc calcMin*(this: var WxGridSizer): WxSize {.cdecl, importcpp: "CalcMin", 
    header: wxh.}
proc setCols*(this: var WxGridSizer; cols: cint) {.cdecl, importcpp: "SetCols", 
    header: wxh.}
proc setRows*(this: var WxGridSizer; rows: cint) {.cdecl, importcpp: "SetRows", 
    header: wxh.}
proc setVGap*(this: var WxGridSizer; gap: cint) {.cdecl, importcpp: "SetVGap", 
    header: wxh.}
proc setHGap*(this: var WxGridSizer; gap: cint) {.cdecl, importcpp: "SetHGap", 
    header: wxh.}
proc getCols*(this: WxGridSizer): cint {.noSideEffect, cdecl, 
    importcpp: "GetCols", header: wxh.}
proc getRows*(this: WxGridSizer): cint {.noSideEffect, cdecl, 
    importcpp: "GetRows", header: wxh.}
proc getVGap*(this: WxGridSizer): cint {.noSideEffect, cdecl, 
    importcpp: "GetVGap", header: wxh.}
proc getHGap*(this: WxGridSizer): cint {.noSideEffect, cdecl, 
    importcpp: "GetHGap", header: wxh.}
proc getEffectiveColsCount*(this: WxGridSizer): cint {.noSideEffect, cdecl, 
    importcpp: "GetEffectiveColsCount", header: wxh.}
proc getEffectiveRowsCount*(this: WxGridSizer): cint {.noSideEffect, cdecl, 
    importcpp: "GetEffectiveRowsCount", header: wxh.}
proc calcRowsCols*(this: WxGridSizer; rows: var cint; cols: var cint): cint {.
    noSideEffect, cdecl, importcpp: "CalcRowsCols", header: wxh.}

type 
  WxFlexSizerGrowMode* {.size: sizeof(cint), 
                         importcpp: "wxSizer::wxFlexSizerGrowMode", header: wxh.} = enum 
    wxFLEX_GROWMODE_NONE, wxFLEX_GROWMODE_SPECIFIED, wxFLEX_GROWMODE_ALL


type 
  WxFlexGridSizer* {.importcpp: "wxFlexGridSizer", header: wxh.} = object of WxGridSizer
  

proc constructwxFlexGridSizer*(cols: cint; vgap: cint; hgap: cint): WxFlexGridSizer {.
    cdecl, constructor, importcpp: "wxFlexGridSizer(@)", header: wxh.}
proc constructwxFlexGridSizer*(cols: cint; gap: WxSize = constructWxSize(0, 0)): WxFlexGridSizer {.
    cdecl, constructor, importcpp: "wxFlexGridSizer(@)", header: wxh.}
proc constructwxFlexGridSizer*(rows: cint; cols: cint; vgap: cint; hgap: cint): WxFlexGridSizer {.
    cdecl, constructor, importcpp: "wxFlexGridSizer(@)", header: wxh.}
proc constructwxFlexGridSizer*(rows: cint; cols: cint; gap: WxSize): WxFlexGridSizer {.
    cdecl, constructor, importcpp: "wxFlexGridSizer(@)", header: wxh.}
proc destroywxFlexGridSizer*(this: var WxFlexGridSizer) {.cdecl, 
    importcpp: "#.~wxFlexGridSizer()", header: wxh.}
proc addGrowableRow*(this: var WxFlexGridSizer; idx: csize; proportion: cint = 0) {.
    cdecl, importcpp: "AddGrowableRow", header: wxh.}
proc removeGrowableRow*(this: var WxFlexGridSizer; idx: csize) {.cdecl, 
    importcpp: "RemoveGrowableRow", header: wxh.}
proc addGrowableCol*(this: var WxFlexGridSizer; idx: csize; proportion: cint = 0) {.
    cdecl, importcpp: "AddGrowableCol", header: wxh.}
proc removeGrowableCol*(this: var WxFlexGridSizer; idx: csize) {.cdecl, 
    importcpp: "RemoveGrowableCol", header: wxh.}
proc isRowGrowable*(this: var WxFlexGridSizer; idx: csize): bool {.cdecl, 
    importcpp: "IsRowGrowable", header: wxh.}
proc isColGrowable*(this: var WxFlexGridSizer; idx: csize): bool {.cdecl, 
    importcpp: "IsColGrowable", header: wxh.}
proc setFlexibleDirection*(this: var WxFlexGridSizer; direction: cint) {.cdecl, 
    importcpp: "SetFlexibleDirection", header: wxh.}
proc getFlexibleDirection*(this: WxFlexGridSizer): cint {.noSideEffect, cdecl, 
    importcpp: "GetFlexibleDirection", header: wxh.}
proc setNonFlexibleGrowMode*(this: var WxFlexGridSizer; 
                             mode: WxFlexSizerGrowMode) {.cdecl, 
    importcpp: "SetNonFlexibleGrowMode", header: wxh.}
proc getNonFlexibleGrowMode*(this: WxFlexGridSizer): WxFlexSizerGrowMode {.
    noSideEffect, cdecl, importcpp: "GetNonFlexibleGrowMode", header: wxh.}
proc getRowHeights*(this: WxFlexGridSizer): WxArrayInt {.noSideEffect, cdecl, 
    importcpp: "GetRowHeights", header: wxh.}
proc getColWidths*(this: WxFlexGridSizer): WxArrayInt {.noSideEffect, cdecl, 
    importcpp: "GetColWidths", header: wxh.}
proc recalcSizes*(this: var WxFlexGridSizer) {.cdecl, importcpp: "RecalcSizes", 
    header: wxh.}
proc calcMin*(this: var WxFlexGridSizer): WxSize {.cdecl, importcpp: "CalcMin", 
    header: wxh.}

type 
  WxBoxSizer* {.importcpp: "wxBoxSizer", header: wxh.} = object of WxSizer
  

proc constructwxBoxSizer*(orient: cint): WxBoxSizer {.cdecl, constructor, 
    importcpp: "wxBoxSizer(@)", header: wxh.}
proc addSpacer*(this: var WxBoxSizer; size: cint): ptr WxSizerItem {.cdecl, 
    importcpp: "AddSpacer", header: wxh.}
proc getOrientation*(this: WxBoxSizer): cint {.noSideEffect, cdecl, 
    importcpp: "GetOrientation", header: wxh.}
proc isVertical*(this: WxBoxSizer): bool {.noSideEffect, cdecl, 
    importcpp: "IsVertical", header: wxh.}
proc setOrientation*(this: var WxBoxSizer; orient: cint) {.cdecl, 
    importcpp: "SetOrientation", header: wxh.}
proc calcMin*(this: var WxBoxSizer): WxSize {.cdecl, importcpp: "CalcMin", 
    header: wxh.}
proc recalcSizes*(this: var WxBoxSizer) {.cdecl, importcpp: "RecalcSizes", 
    header: wxh.}

type 
  WxStaticBox* {.importcpp: "wxStaticBox", header: wxh.} = object 
  
  WxStaticBoxSizer* {.importcpp: "wxStaticBoxSizer", header: wxh.} = object of WxBoxSizer
  

proc constructwxStaticBoxSizer*(box: ptr WxStaticBox; orient: cint): WxStaticBoxSizer {.
    cdecl, constructor, importcpp: "wxStaticBoxSizer(@)", header: wxh.}
proc constructwxStaticBoxSizer*(orient: cint; win: ptr WxWindow; 
                                label: WxString = wxEmptyString): WxStaticBoxSizer {.
    cdecl, constructor, importcpp: "wxStaticBoxSizer(@)", header: wxh.}
proc destroywxStaticBoxSizer*(this: var WxStaticBoxSizer) {.cdecl, 
    importcpp: "#.~wxStaticBoxSizer()", header: wxh.}
proc recalcSizes*(this: var WxStaticBoxSizer) {.cdecl, importcpp: "RecalcSizes", 
    header: wxh.}
proc calcMin*(this: var WxStaticBoxSizer): WxSize {.cdecl, importcpp: "CalcMin", 
    header: wxh.}
proc getStaticBox*(this: WxStaticBoxSizer): ptr WxStaticBox {.noSideEffect, 
    cdecl, importcpp: "GetStaticBox", header: wxh.}
proc showItems*(this: var WxStaticBoxSizer; show: bool) {.cdecl, 
    importcpp: "ShowItems", header: wxh.}
proc areAnyItemsShown*(this: WxStaticBoxSizer): bool {.noSideEffect, cdecl, 
    importcpp: "AreAnyItemsShown", header: wxh.}
proc detach*(this: var WxStaticBoxSizer; window: ptr WxWindow): bool {.cdecl, 
    importcpp: "Detach", header: wxh.}
proc detach*(this: var WxStaticBoxSizer; sizer: ptr WxSizer): bool {.cdecl, 
    importcpp: "Detach", header: wxh.}
proc detach*(this: var WxStaticBoxSizer; index: cint): bool {.cdecl, 
    importcpp: "Detach", header: wxh.}

type 
  WxStdDialogButtonSizer* {.importcpp: "wxStdDialogButtonSizer", header: wxh.} = object of WxBoxSizer
  

proc constructwxStdDialogButtonSizer*(): WxStdDialogButtonSizer {.cdecl, 
    constructor, importcpp: "wxStdDialogButtonSizer(@)", header: wxh.}
proc addButton*(this: var WxStdDialogButtonSizer; button: ptr WxButton) {.cdecl, 
    importcpp: "AddButton", header: wxh.}
proc setAffirmativeButton*(this: var WxStdDialogButtonSizer; 
                           button: ptr WxButton) {.cdecl, 
    importcpp: "SetAffirmativeButton", header: wxh.}
proc setNegativeButton*(this: var WxStdDialogButtonSizer; button: ptr WxButton) {.
    cdecl, importcpp: "SetNegativeButton", header: wxh.}
proc setCancelButton*(this: var WxStdDialogButtonSizer; button: ptr WxButton) {.
    cdecl, importcpp: "SetCancelButton", header: wxh.}
proc realize*(this: var WxStdDialogButtonSizer) {.cdecl, importcpp: "Realize", 
    header: wxh.}
proc getAffirmativeButton*(this: WxStdDialogButtonSizer): ptr WxButton {.
    noSideEffect, cdecl, importcpp: "GetAffirmativeButton", header: wxh.}
proc getApplyButton*(this: WxStdDialogButtonSizer): ptr WxButton {.noSideEffect, 
    cdecl, importcpp: "GetApplyButton", header: wxh.}
proc getNegativeButton*(this: WxStdDialogButtonSizer): ptr WxButton {.
    noSideEffect, cdecl, importcpp: "GetNegativeButton", header: wxh.}
proc getCancelButton*(this: WxStdDialogButtonSizer): ptr WxButton {.
    noSideEffect, cdecl, importcpp: "GetCancelButton", header: wxh.}
proc getHelpButton*(this: WxStdDialogButtonSizer): ptr WxButton {.noSideEffect, 
    cdecl, importcpp: "GetHelpButton", header: wxh.}