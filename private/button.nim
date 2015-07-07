


type 
  WxButtonBase* {.importcpp: "wxButtonBase", header: "wx.h".} = object of WxAnyButton
  

proc constructwxButtonBase*(): WxButtonBase {.cdecl, constructor, 
    importcpp: "wxButtonBase(@)", header: "wx.h".}
proc setAuthNeeded*(this: var WxButtonBase; show: bool = true) {.cdecl, 
    importcpp: "SetAuthNeeded", header: "wx.h".}
proc getAuthNeeded*(this: WxButtonBase): bool {.noSideEffect, cdecl, 
    importcpp: "GetAuthNeeded", header: "wx.h".}
proc setDefault*(this: var WxButtonBase): ptr WxWindow {.cdecl, 
    importcpp: "SetDefault", header: "wx.h".}
proc getDefaultSize*(): WxSize {.cdecl, 
                                 importcpp: "wxButtonBase::GetDefaultSize(@)", 
                                 header: "wx.h".}
type 
  WxButton* {.importcpp: "wxButton", header: "wx.h".} = object of WxButtonBase
    mAuthNeeded* {.importc: "m_authNeeded".}: bool


proc constructwxButton*(): WxButton {.cdecl, constructor, 
                                      importcpp: "wxButton(@)", header: "wx.h".}
proc constructwxButton*(parent: ptr WxWindow; id: WxWindowID; 
                        label: WxString = wxEmptyString; 
                        pos: WxPoint = wxDefaultPosition; 
                        size: WxSize = wxDefaultSize; style: clong = 0; 
                        validator: WxValidator = wxDefaultValidator; 
                        name: WxString = constructWxString("button")): WxButton {.
    cdecl, constructor, importcpp: "wxButton(@)", header: "wx.h".}
proc create*(this: var WxButton; parent: ptr WxWindow; id: WxWindowID; 
             label: WxString = wxEmptyString; pos: WxPoint = wxDefaultPosition; 
             size: WxSize = wxDefaultSize; style: clong = 0; 
             validator: WxValidator = wxDefaultValidator; 
             name: WxString = constructWxString("button")): bool {.cdecl, 
    importcpp: "Create", header: "wx.h".}
proc destroywxButton*(this: var WxButton) {.cdecl, importcpp: "#.~wxButton()", 
    header: "wx.h".}
proc setDefault*(this: var WxButton): ptr WxWindow {.cdecl, 
    importcpp: "SetDefault", header: "wx.h".}
proc command*(this: var WxButton; event: var WxCommandEvent) {.cdecl, 
    importcpp: "Command", header: "wx.h".}