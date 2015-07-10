

discard "forward decl of wxToolTip"

type 
  WxRadioBoxBase* {.importcpp: "wxRadioBoxBase", header: wxh.} = object of WxItemContainerImmutable
  

proc destroywxRadioBoxBase*(this: var WxRadioBoxBase) {.cdecl, 
    importcpp: "#.~wxRadioBoxBase()", header: wxh.}
proc enable*(this: var WxRadioBoxBase; n: cuint; enable: bool = true): bool {.
    cdecl, importcpp: "Enable", header: wxh.}
proc show*(this: var WxRadioBoxBase; n: cuint; show: bool = true): bool {.cdecl, 
    importcpp: "Show", header: wxh.}
proc isItemEnabled*(this: WxRadioBoxBase; n: cuint): bool {.noSideEffect, cdecl, 
    importcpp: "IsItemEnabled", header: wxh.}
proc isItemShown*(this: WxRadioBoxBase; n: cuint): bool {.noSideEffect, cdecl, 
    importcpp: "IsItemShown", header: wxh.}
proc getColumnCount*(this: WxRadioBoxBase): cuint {.noSideEffect, cdecl, 
    importcpp: "GetColumnCount", header: wxh.}
proc getRowCount*(this: WxRadioBoxBase): cuint {.noSideEffect, cdecl, 
    importcpp: "GetRowCount", header: wxh.}
proc getNextItem*(this: WxRadioBoxBase; item: cint; dir: WxDirection; 
                  style: clong): cint {.noSideEffect, cdecl, 
                                        importcpp: "GetNextItem", header: wxh.}
proc setItemToolTip*(this: var WxRadioBoxBase; item: cuint; text: WxString) {.
    cdecl, importcpp: "SetItemToolTip", header: wxh.}
proc getItemToolTip*(this: WxRadioBoxBase; item: cuint): ptr WxToolTip {.
    noSideEffect, cdecl, importcpp: "GetItemToolTip", header: wxh.}
proc setItemHelpText*(this: var WxRadioBoxBase; n: cuint; helpText: WxString) {.
    cdecl, importcpp: "SetItemHelpText", header: wxh.}
proc getItemHelpText*(this: WxRadioBoxBase; n: cuint): WxString {.noSideEffect, 
    cdecl, importcpp: "GetItemHelpText", header: wxh.}
proc getItemFromPoint*(this: WxRadioBoxBase; pt: WxPoint): cint {.noSideEffect, 
    cdecl, importcpp: "GetItemFromPoint", header: wxh.}
discard "forward decl of wxSubwindows"
type 
  WxRadioBox* {.importcpp: "wxRadioBox", header: wxh.} = object of WxRadioBoxBase
  

proc constructwxRadioBox*(): WxRadioBox {.cdecl, constructor, 
    importcpp: "wxRadioBox(@)", header: wxh.}
proc constructwxRadioBox*(parent: ptr WxWindow; id: WxWindowID; title: WxString; 
                          pos: WxPoint = wxDefaultPosition; 
                          size: WxSize = wxDefaultSize; n: cint = 0; 
                          choices: ptr WxString = nil; majorDim: cint = 0; 
                          style = wxRA_SPECIFY_COLS; 
                          val: WxValidator = wxDefaultValidator; 
                          name: WxString = constructWxString("radioBox")): WxRadioBox {.
    cdecl, constructor, importcpp: "wxRadioBox(@)", header: wxh.}
proc constructwxRadioBox*(parent: ptr WxWindow; id: WxWindowID; title: WxString; 
                          pos: WxPoint; size: WxSize; choices: WxArrayString; 
                          majorDim: cint = 0; style = wxRA_SPECIFY_COLS; 
                          val: WxValidator = wxDefaultValidator; 
                          name: WxString = constructWxString("radioBox")): WxRadioBox {.
    cdecl, constructor, importcpp: "wxRadioBox(@)", header: wxh.}
proc destroywxRadioBox*(this: var WxRadioBox) {.cdecl, 
    importcpp: "#.~wxRadioBox()", header: wxh.}
proc create*(this: var WxRadioBox; parent: ptr WxWindow; id: WxWindowID; 
             title: WxString; pos: WxPoint = wxDefaultPosition; 
             size: WxSize = wxDefaultSize; n: cint = 0; 
             choices: ptr WxString = nil; majorDim: cint = 0; 
             style = wxRA_SPECIFY_COLS; val: WxValidator = wxDefaultValidator; 
             name: WxString = constructWxString("radioBox")): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc create*(this: var WxRadioBox; parent: ptr WxWindow; id: WxWindowID; 
             title: WxString; pos: WxPoint; size: WxSize; 
             choices: WxArrayString; majorDim: cint = 0; 
             style = wxRA_SPECIFY_COLS; val: WxValidator = wxDefaultValidator; 
             name: WxString = constructWxString("radioBox")): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc setSelection*(this: var WxRadioBox; n: cint) {.cdecl, 
    importcpp: "SetSelection", header: wxh.}
proc getSelection*(this: WxRadioBox): cint {.noSideEffect, cdecl, 
    importcpp: "GetSelection", header: wxh.}
proc getCount*(this: WxRadioBox): cuint {.noSideEffect, cdecl, 
    importcpp: "GetCount", header: wxh.}
proc getString*(this: WxRadioBox; n: cuint): WxString {.noSideEffect, cdecl, 
    importcpp: "GetString", header: wxh.}
proc setString*(this: var WxRadioBox; n: cuint; label: WxString) {.cdecl, 
    importcpp: "SetString", header: wxh.}
proc enable*(this: var WxRadioBox; n: cuint; enable: bool = true): bool {.cdecl, 
    importcpp: "Enable", header: wxh.}
proc show*(this: var WxRadioBox; n: cuint; show: bool = true): bool {.cdecl, 
    importcpp: "Show", header: wxh.}
proc isItemEnabled*(this: WxRadioBox; n: cuint): bool {.noSideEffect, cdecl, 
    importcpp: "IsItemEnabled", header: wxh.}
proc isItemShown*(this: WxRadioBox; n: cuint): bool {.noSideEffect, cdecl, 
    importcpp: "IsItemShown", header: wxh.}
proc getItemFromPoint*(this: WxRadioBox; pt: WxPoint): cint {.noSideEffect, 
    cdecl, importcpp: "GetItemFromPoint", header: wxh.}
proc show*(this: var WxRadioBox; show: bool = true): bool {.cdecl, 
    importcpp: "Show", header: wxh.}
proc enable*(this: var WxRadioBox; enable: bool = true): bool {.cdecl, 
    importcpp: "Enable", header: wxh.}
proc canBeFocused*(this: WxRadioBox): bool {.noSideEffect, cdecl, 
    importcpp: "CanBeFocused", header: wxh.}
proc setFocus*(this: var WxRadioBox) {.cdecl, importcpp: "SetFocus", header: wxh.}
proc setFont*(this: var WxRadioBox; font: WxFont): bool {.cdecl, 
    importcpp: "SetFont", header: wxh.}
proc hasToolTips*(this: WxRadioBox): bool {.noSideEffect, cdecl, 
    importcpp: "HasToolTips", header: wxh.}
proc getHelpTextAtPoint*(this: WxRadioBox; pt: WxPoint; origin: Origin): WxString {.
    noSideEffect, cdecl, importcpp: "GetHelpTextAtPoint", header: wxh.}
proc reparent*(this: var WxRadioBox; newParent: ptr WxWindowBase): bool {.cdecl, 
    importcpp: "Reparent", header: wxh.}
proc canApplyThemeBorder*(this: WxRadioBox): bool {.noSideEffect, cdecl, 
    importcpp: "CanApplyThemeBorder", header: wxh.}
proc setLabelFont*(this: var WxRadioBox; font: WxFont) {.cdecl, 
    importcpp: "SetLabelFont", header: wxh.}
proc setButtonFont*(this: var WxRadioBox; font: WxFont) {.cdecl, 
    importcpp: "SetButtonFont", header: wxh.}
proc command*(this: var WxRadioBox; event: var WxCommandEvent) {.cdecl, 
    importcpp: "Command", header: wxh.}
proc sendNotificationEvent*(this: var WxRadioBox) {.cdecl, 
    importcpp: "SendNotificationEvent", header: wxh.}