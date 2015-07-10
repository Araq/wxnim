



type 
  WxItemContainerImmutable* {.importcpp: "wxItemContainerImmutable", 
                              header: "<wx/wx.h>", inheritable.} = object 
  
  WxItemContainer* {.importcpp: "wxItemContainer", header: "<wx/wx.h>".} = object of WxItemContainerImmutable
  
  WxComboBoxBase* {.importcpp: "wxComboBoxBase", header: "<wx/wx.h>".} = object of WxItemContainer
  

proc clear*(this: var WxComboBoxBase) {.cdecl, importcpp: "Clear", 
                                        header: "<wx/wx.h>".}
proc isListEmpty*(this: WxComboBoxBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsListEmpty", header: "<wx/wx.h>".}
proc isTextEmpty*(this: WxComboBoxBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsTextEmpty", header: "<wx/wx.h>".}
proc getSelection*(this: WxComboBoxBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetSelection", header: "<wx/wx.h>".}
proc getSelection*(this: WxComboBoxBase; `from`: ptr clong; to: ptr clong) {.
    noSideEffect, cdecl, importcpp: "GetSelection", header: "<wx/wx.h>".}
proc popup*(this: var WxComboBoxBase) {.cdecl, importcpp: "Popup", 
                                        header: "<wx/wx.h>".}
proc dismiss*(this: var WxComboBoxBase) {.cdecl, importcpp: "Dismiss", 
    header: "<wx/wx.h>".}
proc getCurrentSelection*(this: WxComboBoxBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetCurrentSelection", header: "<wx/wx.h>".}