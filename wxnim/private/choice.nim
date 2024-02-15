



type 
  WxChoiceBase* {.importcpp: "wxChoiceBase", header: wxh.} = object of WxControlWithItems
  

proc constructwxChoiceBase*(): WxChoiceBase {.cdecl, constructor, 
    importcpp: "wxChoiceBase(@)", header: wxh.}
proc destroywxChoiceBase*(this: var WxChoiceBase) {.cdecl, 
    importcpp: "#.~wxChoiceBase()", header: wxh.}
proc getCurrentSelection*(this: WxChoiceBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetCurrentSelection", header: wxh.}
proc setColumns*(this: var WxChoiceBase; n: cint = 1) {.cdecl, 
    importcpp: "SetColumns", header: wxh.}
proc getColumns*(this: WxChoiceBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetColumns", header: wxh.}
proc command*(this: var WxChoiceBase; event: var WxCommandEvent) {.cdecl, 
    importcpp: "Command", header: wxh.}
proc isSorted*(this: WxChoiceBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsSorted", header: wxh.}
type 
  WxChoice* {.importcpp: "wxChoice", header: wxh.} = object of WxChoiceBase
  

proc constructwxChoice*(): WxChoice {.cdecl, constructor, 
                                      importcpp: "wxChoice(@)", header: wxh.}
proc destroywxChoice*(this: var WxChoice) {.cdecl, importcpp: "#.~wxChoice()", 
    header: wxh.}
proc constructwxChoice*(parent: ptr WxWindow; id: WxWindowID; 
                        pos: WxPoint = wxDefaultPosition; 
                        size: WxSize = wxDefaultSize; n: cint = 0; 
                        choices: ptr WxString = nil; style: clong = 0; 
                        validator: WxValidator = wxDefaultValidator; 
                        name: WxString = constructWxString("choice")): WxChoice {.
    cdecl, constructor, importcpp: "wxChoice(@)", header: wxh.}
proc constructwxChoice*(parent: ptr WxWindow; id: WxWindowID; pos: WxPoint; 
                        size: WxSize; choices: WxArrayString; style: clong = 0; 
                        validator: WxValidator = wxDefaultValidator; 
                        name: WxString = constructWxString("choice")): WxChoice {.
    cdecl, constructor, importcpp: "wxChoice(@)", header: wxh.}
proc create*(this: var WxChoice; parent: ptr WxWindow; id: WxWindowID; 
             pos: WxPoint = wxDefaultPosition; size: WxSize = wxDefaultSize; 
             n: cint = 0; choices: ptr WxString = nil; style: clong = 0; 
             validator: WxValidator = wxDefaultValidator; 
             name: WxString = constructWxString("choice")): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc create*(this: var WxChoice; parent: ptr WxWindow; id: WxWindowID; 
             pos: WxPoint; size: WxSize; choices: WxArrayString; 
             style: clong = 0; validator: WxValidator = wxDefaultValidator; 
             name: WxString = constructWxString("choice")): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc show*(this: var WxChoice; show: bool = true): bool {.discardable, cdecl, 
    importcpp: "Show", header: wxh.}
proc setLabel*(this: var WxChoice; label: WxString) {.cdecl, 
    importcpp: "SetLabel", header: wxh.}
proc getCount*(this: WxChoice): cuint {.noSideEffect, cdecl, 
                                        importcpp: "GetCount", header: wxh.}
proc getSelection*(this: WxChoice): cint {.noSideEffect, cdecl, 
    importcpp: "GetSelection", header: wxh.}
proc getCurrentSelection*(this: WxChoice): cint {.noSideEffect, cdecl, 
    importcpp: "GetCurrentSelection", header: wxh.}
proc setSelection*(this: var WxChoice; n: cint) {.cdecl, 
    importcpp: "SetSelection", header: wxh.}
proc findString*(this: WxChoice; s: WxString; bCase: bool = false): cint {.
    noSideEffect, cdecl, importcpp: "FindString", header: wxh.}
proc getString*(this: WxChoice; n: cuint): WxString {.noSideEffect, cdecl, 
    importcpp: "GetString", header: wxh.}
proc setString*(this: var WxChoice; n: cuint; s: WxString) {.cdecl, 
    importcpp: "SetString", header: wxh.}
proc getDefaultAttributes*(this: WxChoice): WxVisualAttributes {.noSideEffect, 
    cdecl, importcpp: "GetDefaultAttributes", header: wxh.}