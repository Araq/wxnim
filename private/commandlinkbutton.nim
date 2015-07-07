


type 
  WxCommandLinkButtonBase* {.importcpp: "wxCommandLinkButtonBase", 
                             header: "wx.h".} = object of WxButton
  

proc constructwxCommandLinkButtonBase*(): WxCommandLinkButtonBase {.cdecl, 
    constructor, importcpp: "wxCommandLinkButtonBase(@)", header: "wx.h".}
proc constructwxCommandLinkButtonBase*(parent: ptr WxWindow; id: WxWindowID; 
                                       mainLabel: WxString = wxEmptyString; 
                                       note: WxString = wxEmptyString; 
                                       pos: WxPoint = wxDefaultPosition; 
                                       size: WxSize = wxDefaultSize; 
                                       style: clong = 0; validator: WxValidator = wxDefaultValidator; 
    name: WxString = constructWxString("button")): WxCommandLinkButtonBase {.
    cdecl, constructor, importcpp: "wxCommandLinkButtonBase(@)", header: "wx.h".}
proc setMainLabelAndNote*(this: var WxCommandLinkButtonBase; 
                          mainLabel: WxString; note: WxString) {.cdecl, 
    importcpp: "SetMainLabelAndNote", header: "wx.h".}
proc setMainLabel*(this: var WxCommandLinkButtonBase; mainLabel: WxString) {.
    cdecl, importcpp: "SetMainLabel", header: "wx.h".}
proc setNote*(this: var WxCommandLinkButtonBase; note: WxString) {.cdecl, 
    importcpp: "SetNote", header: "wx.h".}
proc getMainLabel*(this: WxCommandLinkButtonBase): WxString {.noSideEffect, 
    cdecl, importcpp: "GetMainLabel", header: "wx.h".}
proc getNote*(this: WxCommandLinkButtonBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetNote", header: "wx.h".}

type 
  WxGenericCommandLinkButton* {.importcpp: "wxGenericCommandLinkButton", 
                                header: "wx.h".} = object of WxCommandLinkButtonBase
  

proc constructwxGenericCommandLinkButton*(): WxGenericCommandLinkButton {.cdecl, 
    constructor, importcpp: "wxGenericCommandLinkButton(@)", header: "wx.h".}
proc constructwxGenericCommandLinkButton*(parent: ptr WxWindow; id: WxWindowID; 
    mainLabel: WxString = wxEmptyString; note: WxString = wxEmptyString; 
    pos: WxPoint = wxDefaultPosition; size: WxSize = wxDefaultSize; 
    style: clong = 0; validator: WxValidator = wxDefaultValidator; 
    name: WxString = constructWxString("button")): WxGenericCommandLinkButton {.
    cdecl, constructor, importcpp: "wxGenericCommandLinkButton(@)", 
    header: "wx.h".}
proc create*(this: var WxGenericCommandLinkButton; parent: ptr WxWindow; 
             id: WxWindowID; mainLabel: WxString = wxEmptyString; 
             note: WxString = wxEmptyString; pos: WxPoint = wxDefaultPosition; 
             size: WxSize = wxDefaultSize; style: clong = 0; 
             validator: WxValidator = wxDefaultValidator; 
             name: WxString = constructWxString("button")): bool {.cdecl, 
    importcpp: "Create", header: "wx.h".}
proc setMainLabelAndNote*(this: var WxGenericCommandLinkButton; 
                          mainLabel: WxString; note: WxString) {.cdecl, 
    importcpp: "SetMainLabelAndNote", header: "wx.h".}
type 
  WxCommandLinkButton* {.importcpp: "wxCommandLinkButton", header: "wx.h".} = object of WxGenericCommandLinkButton
  

proc constructwxCommandLinkButton*(): WxCommandLinkButton {.cdecl, constructor, 
    importcpp: "wxCommandLinkButton(@)", header: "wx.h".}
proc constructwxCommandLinkButton*(parent: ptr WxWindow; id: WxWindowID; 
                                   mainLabel: WxString = wxEmptyString; 
                                   note: WxString = wxEmptyString; 
                                   pos: WxPoint = wxDefaultPosition; 
                                   size: WxSize = wxDefaultSize; 
                                   style: clong = 0; 
                                   validator: WxValidator = wxDefaultValidator; 
                                   name: WxString = constructWxString("button")): WxCommandLinkButton {.
    cdecl, constructor, importcpp: "wxCommandLinkButton(@)", header: "wx.h".}