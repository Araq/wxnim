



type 
  WxItemContainerImmutable* {.importcpp: "wxItemContainerImmutable", 
                              header: wxh, inheritable.} = object 
  
  WxItemContainer* {.importcpp: "wxItemContainer", header: wxh.} = object of WxItemContainerImmutable
  
  WxComboBoxBase* {.importcpp: "wxComboBoxBase", header: wxh.} = object of WxItemContainer
  

proc clear*(this: var WxComboBoxBase) {.cdecl, importcpp: "Clear", header: wxh.}
proc isListEmpty*(this: WxComboBoxBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsListEmpty", header: wxh.}
proc isTextEmpty*(this: WxComboBoxBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsTextEmpty", header: wxh.}
proc getSelection*(this: WxComboBoxBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetSelection", header: wxh.}
proc getSelection*(this: WxComboBoxBase; `from`: ptr clong; to: ptr clong) {.
    noSideEffect, cdecl, importcpp: "GetSelection", header: wxh.}
proc popup*(this: var WxComboBoxBase) {.cdecl, importcpp: "Popup", header: wxh.}
proc dismiss*(this: var WxComboBoxBase) {.cdecl, importcpp: "Dismiss", 
    header: wxh.}
proc getCurrentSelection*(this: WxComboBoxBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetCurrentSelection", header: wxh.}