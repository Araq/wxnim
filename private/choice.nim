



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