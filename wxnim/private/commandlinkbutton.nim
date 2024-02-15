


type 
  WxCommandLinkButtonBase* {.importcpp: "wxCommandLinkButtonBase", header: wxh.} = object of WxButton
  

proc constructwxCommandLinkButtonBase*(): WxCommandLinkButtonBase {.cdecl, 
    constructor, importcpp: "wxCommandLinkButtonBase(@)", header: wxh.}
proc constructwxCommandLinkButtonBase*(parent: ptr WxWindow; id: WxWindowID; 
                                       mainLabel: WxString = wxEmptyString; 
                                       note: WxString = wxEmptyString; 
                                       pos: WxPoint = wxDefaultPosition; 
                                       size: WxSize = wxDefaultSize; 
                                       style: clong = 0; validator: WxValidator = wxDefaultValidator; 
    name: WxString = constructWxString("button")): WxCommandLinkButtonBase {.
    cdecl, constructor, importcpp: "wxCommandLinkButtonBase(@)", header: wxh.}
proc setMainLabelAndNote*(this: var WxCommandLinkButtonBase; 
                          mainLabel: WxString; note: WxString) {.cdecl, 
    importcpp: "SetMainLabelAndNote", header: wxh.}
proc setMainLabel*(this: var WxCommandLinkButtonBase; mainLabel: WxString) {.
    cdecl, importcpp: "SetMainLabel", header: wxh.}
proc setNote*(this: var WxCommandLinkButtonBase; note: WxString) {.cdecl, 
    importcpp: "SetNote", header: wxh.}
proc getMainLabel*(this: WxCommandLinkButtonBase): WxString {.noSideEffect, 
    cdecl, importcpp: "GetMainLabel", header: wxh.}
proc getNote*(this: WxCommandLinkButtonBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetNote", header: wxh.}

type 
  WxGenericCommandLinkButton* {.importcpp: "wxGenericCommandLinkButton", 
                                header: wxh.} = object of WxCommandLinkButtonBase
  

proc constructwxGenericCommandLinkButton*(): WxGenericCommandLinkButton {.cdecl, 
    constructor, importcpp: "wxGenericCommandLinkButton(@)", header: wxh.}
proc constructwxGenericCommandLinkButton*(parent: ptr WxWindow; id: WxWindowID; 
    mainLabel: WxString = wxEmptyString; note: WxString = wxEmptyString; 
    pos: WxPoint = wxDefaultPosition; size: WxSize = wxDefaultSize; 
    style: clong = 0; validator: WxValidator = wxDefaultValidator; 
    name: WxString = constructWxString("button")): WxGenericCommandLinkButton {.
    cdecl, constructor, importcpp: "wxGenericCommandLinkButton(@)", header: wxh.}
proc create*(this: var WxGenericCommandLinkButton; parent: ptr WxWindow; 
             id: WxWindowID; mainLabel: WxString = wxEmptyString; 
             note: WxString = wxEmptyString; pos: WxPoint = wxDefaultPosition; 
             size: WxSize = wxDefaultSize; style: clong = 0; 
             validator: WxValidator = wxDefaultValidator; 
             name: WxString = constructWxString("button")): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc setMainLabelAndNote*(this: var WxGenericCommandLinkButton; 
                          mainLabel: WxString; note: WxString) {.cdecl, 
    importcpp: "SetMainLabelAndNote", header: wxh.}
type 
  WxCommandLinkButton* {.importcpp: "wxCommandLinkButton", header: wxh.} = object of WxGenericCommandLinkButton
  

proc constructwxCommandLinkButton*(): WxCommandLinkButton {.cdecl, constructor, 
    importcpp: "wxCommandLinkButton(@)", header: wxh.}
proc constructwxCommandLinkButton*(parent: ptr WxWindow; id: WxWindowID; 
                                   mainLabel: WxString = wxEmptyString; 
                                   note: WxString = wxEmptyString; 
                                   pos: WxPoint = wxDefaultPosition; 
                                   size: WxSize = wxDefaultSize; 
                                   style: clong = 0; 
                                   validator: WxValidator = wxDefaultValidator; 
                                   name: WxString = constructWxString("button")): WxCommandLinkButton {.
    cdecl, constructor, importcpp: "wxCommandLinkButton(@)", header: wxh.}