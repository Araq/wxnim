



type 
  WxItemContainerImmutable* {.importcpp: "wxItemContainerImmutable", 
                              header: "wx.h", inheritable.} = object 
  
  WxItemContainer* {.importcpp: "wxItemContainer", header: "wx.h".} = object of WxItemContainerImmutable
  
  WxComboBoxBase* {.importcpp: "wxComboBoxBase", header: "wx.h".} = object of WxItemContainer
  

proc clear*(this: var WxComboBoxBase) {.cdecl, importcpp: "Clear", 
                                        header: "wx.h".}
proc isListEmpty*(this: WxComboBoxBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsListEmpty", header: "wx.h".}
proc isTextEmpty*(this: WxComboBoxBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsTextEmpty", header: "wx.h".}
proc getSelection*(this: WxComboBoxBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetSelection", header: "wx.h".}
proc getSelection*(this: WxComboBoxBase; `from`: ptr clong; to: ptr clong) {.
    noSideEffect, cdecl, importcpp: "GetSelection", header: "wx.h".}
proc popup*(this: var WxComboBoxBase) {.cdecl, importcpp: "Popup", 
                                        header: "wx.h".}
proc dismiss*(this: var WxComboBoxBase) {.cdecl, importcpp: "Dismiss", 
    header: "wx.h".}
proc getCurrentSelection*(this: WxComboBoxBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetCurrentSelection", header: "wx.h".}