


type 
  WxButtonBase* {.importcpp: "wxButtonBase", header: wxh.} = object of WxAnyButton
  

proc constructwxButtonBase*(): WxButtonBase {.cdecl, constructor, 
    importcpp: "wxButtonBase(@)", header: wxh.}
proc setAuthNeeded*(this: var WxButtonBase; show: bool = true) {.cdecl, 
    importcpp: "SetAuthNeeded", header: wxh.}
proc getAuthNeeded*(this: WxButtonBase): bool {.noSideEffect, cdecl, 
    importcpp: "GetAuthNeeded", header: wxh.}
proc setDefault*(this: var WxButtonBase): ptr WxWindow {.discardable, cdecl, 
    importcpp: "SetDefault", header: wxh.}
proc getDefaultSize*(): WxSize {.cdecl, 
                                 importcpp: "wxButtonBase::GetDefaultSize(@)", 
                                 header: wxh.}
type 
  WxButton* {.importcpp: "wxButton", header: wxh.} = object of WxButtonBase
  

proc constructwxButton*(): WxButton {.cdecl, constructor, 
                                      importcpp: "wxButton(@)", header: wxh.}
proc constructwxButton*(parent: ptr WxWindow; id: WxWindowID; 
                        label: WxString = wxEmptyString; 
                        pos: WxPoint = wxDefaultPosition; 
                        size: WxSize = wxDefaultSize; style: clong = 0; 
                        validator: WxValidator = wxDefaultValidator; 
                        name: WxString = constructWxString("button")): WxButton {.
    cdecl, constructor, importcpp: "wxButton(@)", header: wxh.}
proc create*(this: var WxButton; parent: ptr WxWindow; id: WxWindowID; 
             label: WxString = wxEmptyString; pos: WxPoint = wxDefaultPosition; 
             size: WxSize = wxDefaultSize; style: clong = 0; 
             validator: WxValidator = wxDefaultValidator; 
             name: WxString = constructWxString("button")): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc destroywxButton*(this: var WxButton) {.cdecl, importcpp: "#.~wxButton()", 
    header: wxh.}
proc setDefault*(this: var WxButton): ptr WxWindow {.discardable, cdecl, 
    importcpp: "SetDefault", header: wxh.}
proc command*(this: var WxButton; event: var WxCommandEvent) {.cdecl, 
    importcpp: "Command", header: wxh.}