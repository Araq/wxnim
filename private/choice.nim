



type 
  WxChoiceBase* {.importcpp: "wxChoiceBase", header: "<wx/wx.h>".} = object of WxControlWithItems
  

proc constructwxChoiceBase*(): WxChoiceBase {.cdecl, constructor, 
    importcpp: "wxChoiceBase(@)", header: "<wx/wx.h>".}
proc destroywxChoiceBase*(this: var WxChoiceBase) {.cdecl, 
    importcpp: "#.~wxChoiceBase()", header: "<wx/wx.h>".}
proc getCurrentSelection*(this: WxChoiceBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetCurrentSelection", header: "<wx/wx.h>".}
proc setColumns*(this: var WxChoiceBase; n: cint = 1) {.cdecl, 
    importcpp: "SetColumns", header: "<wx/wx.h>".}
proc getColumns*(this: WxChoiceBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetColumns", header: "<wx/wx.h>".}
proc command*(this: var WxChoiceBase; event: var WxCommandEvent) {.cdecl, 
    importcpp: "Command", header: "<wx/wx.h>".}
proc isSorted*(this: WxChoiceBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsSorted", header: "<wx/wx.h>".}