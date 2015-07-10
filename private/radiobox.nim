

discard "forward decl of wxToolTip"

type 
  WxRadioBoxBase* {.importcpp: "wxRadioBoxBase", header: "<wx/wx.h>".} = object of WxItemContainerImmutable
  

proc destroywxRadioBoxBase*(this: var WxRadioBoxBase) {.cdecl, 
    importcpp: "#.~wxRadioBoxBase()", header: "<wx/wx.h>".}
proc enable*(this: var WxRadioBoxBase; n: cuint; enable: bool = true): bool {.
    cdecl, importcpp: "Enable", header: "<wx/wx.h>".}
proc show*(this: var WxRadioBoxBase; n: cuint; show: bool = true): bool {.cdecl, 
    importcpp: "Show", header: "<wx/wx.h>".}
proc isItemEnabled*(this: WxRadioBoxBase; n: cuint): bool {.noSideEffect, cdecl, 
    importcpp: "IsItemEnabled", header: "<wx/wx.h>".}
proc isItemShown*(this: WxRadioBoxBase; n: cuint): bool {.noSideEffect, cdecl, 
    importcpp: "IsItemShown", header: "<wx/wx.h>".}
proc getColumnCount*(this: WxRadioBoxBase): cuint {.noSideEffect, cdecl, 
    importcpp: "GetColumnCount", header: "<wx/wx.h>".}
proc getRowCount*(this: WxRadioBoxBase): cuint {.noSideEffect, cdecl, 
    importcpp: "GetRowCount", header: "<wx/wx.h>".}
proc getNextItem*(this: WxRadioBoxBase; item: cint; dir: WxDirection; 
                  style: clong): cint {.noSideEffect, cdecl, 
                                        importcpp: "GetNextItem", 
                                        header: "<wx/wx.h>".}
proc setItemToolTip*(this: var WxRadioBoxBase; item: cuint; text: WxString) {.
    cdecl, importcpp: "SetItemToolTip", header: "<wx/wx.h>".}
proc getItemToolTip*(this: WxRadioBoxBase; item: cuint): ptr WxToolTip {.
    noSideEffect, cdecl, importcpp: "GetItemToolTip", header: "<wx/wx.h>".}
proc setItemHelpText*(this: var WxRadioBoxBase; n: cuint; helpText: WxString) {.
    cdecl, importcpp: "SetItemHelpText", header: "<wx/wx.h>".}
proc getItemHelpText*(this: WxRadioBoxBase; n: cuint): WxString {.noSideEffect, 
    cdecl, importcpp: "GetItemHelpText", header: "<wx/wx.h>".}
proc getItemFromPoint*(this: WxRadioBoxBase; pt: WxPoint): cint {.noSideEffect, 
    cdecl, importcpp: "GetItemFromPoint", header: "<wx/wx.h>".}
discard "forward decl of wxSubwindows"
type 
  WxRadioBox* {.importcpp: "wxRadioBox", header: "<wx/wx.h>".} = object of WxRadioBoxBase
  

proc constructwxRadioBox*(): WxRadioBox {.cdecl, constructor, 
    importcpp: "wxRadioBox(@)", header: "<wx/wx.h>".}
proc constructwxRadioBox*(parent: ptr WxWindow; id: WxWindowID; title: WxString; 
                          pos: WxPoint = wxDefaultPosition; 
                          size: WxSize = wxDefaultSize; n: cint = 0; 
                          choices: ptr WxString = nil; majorDim: cint = 0; 
                          style = wxRA_SPECIFY_COLS; 
                          val: WxValidator = wxDefaultValidator; 
                          name: WxString = constructWxString("radioBox")): WxRadioBox {.
    cdecl, constructor, importcpp: "wxRadioBox(@)", header: "<wx/wx.h>".}
proc constructwxRadioBox*(parent: ptr WxWindow; id: WxWindowID; title: WxString; 
                          pos: WxPoint; size: WxSize; choices: WxArrayString; 
                          majorDim: cint = 0; style = wxRA_SPECIFY_COLS; 
                          val: WxValidator = wxDefaultValidator; 
                          name: WxString = constructWxString("radioBox")): WxRadioBox {.
    cdecl, constructor, importcpp: "wxRadioBox(@)", header: "<wx/wx.h>".}
proc destroywxRadioBox*(this: var WxRadioBox) {.cdecl, 
    importcpp: "#.~wxRadioBox()", header: "<wx/wx.h>".}
proc create*(this: var WxRadioBox; parent: ptr WxWindow; id: WxWindowID; 
             title: WxString; pos: WxPoint = wxDefaultPosition; 
             size: WxSize = wxDefaultSize; n: cint = 0; 
             choices: ptr WxString = nil; majorDim: cint = 0; 
             style = wxRA_SPECIFY_COLS; val: WxValidator = wxDefaultValidator; 
             name: WxString = constructWxString("radioBox")): bool {.cdecl, 
    importcpp: "Create", header: "<wx/wx.h>".}
proc create*(this: var WxRadioBox; parent: ptr WxWindow; id: WxWindowID; 
             title: WxString; pos: WxPoint; size: WxSize; 
             choices: WxArrayString; majorDim: cint = 0; 
             style = wxRA_SPECIFY_COLS; val: WxValidator = wxDefaultValidator; 
             name: WxString = constructWxString("radioBox")): bool {.cdecl, 
    importcpp: "Create", header: "<wx/wx.h>".}
proc setSelection*(this: var WxRadioBox; n: cint) {.cdecl, 
    importcpp: "SetSelection", header: "<wx/wx.h>".}
proc getSelection*(this: WxRadioBox): cint {.noSideEffect, cdecl, 
    importcpp: "GetSelection", header: "<wx/wx.h>".}
proc getCount*(this: WxRadioBox): cuint {.noSideEffect, cdecl, 
    importcpp: "GetCount", header: "<wx/wx.h>".}
proc getString*(this: WxRadioBox; n: cuint): WxString {.noSideEffect, cdecl, 
    importcpp: "GetString", header: "<wx/wx.h>".}
proc setString*(this: var WxRadioBox; n: cuint; label: WxString) {.cdecl, 
    importcpp: "SetString", header: "<wx/wx.h>".}
proc enable*(this: var WxRadioBox; n: cuint; enable: bool = true): bool {.cdecl, 
    importcpp: "Enable", header: "<wx/wx.h>".}
proc show*(this: var WxRadioBox; n: cuint; show: bool = true): bool {.cdecl, 
    importcpp: "Show", header: "<wx/wx.h>".}
proc isItemEnabled*(this: WxRadioBox; n: cuint): bool {.noSideEffect, cdecl, 
    importcpp: "IsItemEnabled", header: "<wx/wx.h>".}
proc isItemShown*(this: WxRadioBox; n: cuint): bool {.noSideEffect, cdecl, 
    importcpp: "IsItemShown", header: "<wx/wx.h>".}
proc getItemFromPoint*(this: WxRadioBox; pt: WxPoint): cint {.noSideEffect, 
    cdecl, importcpp: "GetItemFromPoint", header: "<wx/wx.h>".}
proc show*(this: var WxRadioBox; show: bool = true): bool {.cdecl, 
    importcpp: "Show", header: "<wx/wx.h>".}
proc enable*(this: var WxRadioBox; enable: bool = true): bool {.cdecl, 
    importcpp: "Enable", header: "<wx/wx.h>".}
proc canBeFocused*(this: WxRadioBox): bool {.noSideEffect, cdecl, 
    importcpp: "CanBeFocused", header: "<wx/wx.h>".}
proc setFocus*(this: var WxRadioBox) {.cdecl, importcpp: "SetFocus", 
                                       header: "<wx/wx.h>".}
proc setFont*(this: var WxRadioBox; font: WxFont): bool {.cdecl, 
    importcpp: "SetFont", header: "<wx/wx.h>".}
proc hasToolTips*(this: WxRadioBox): bool {.noSideEffect, cdecl, 
    importcpp: "HasToolTips", header: "<wx/wx.h>".}
proc getHelpTextAtPoint*(this: WxRadioBox; pt: WxPoint; origin: Origin): WxString {.
    noSideEffect, cdecl, importcpp: "GetHelpTextAtPoint", header: "<wx/wx.h>".}
proc reparent*(this: var WxRadioBox; newParent: ptr WxWindowBase): bool {.cdecl, 
    importcpp: "Reparent", header: "<wx/wx.h>".}
proc canApplyThemeBorder*(this: WxRadioBox): bool {.noSideEffect, cdecl, 
    importcpp: "CanApplyThemeBorder", header: "<wx/wx.h>".}
proc setLabelFont*(this: var WxRadioBox; font: WxFont) {.cdecl, 
    importcpp: "SetLabelFont", header: "<wx/wx.h>".}
proc setButtonFont*(this: var WxRadioBox; font: WxFont) {.cdecl, 
    importcpp: "SetButtonFont", header: "<wx/wx.h>".}
proc command*(this: var WxRadioBox; event: var WxCommandEvent) {.cdecl, 
    importcpp: "Command", header: "<wx/wx.h>".}
proc sendNotificationEvent*(this: var WxRadioBox) {.cdecl, 
    importcpp: "SendNotificationEvent", header: "<wx/wx.h>".}