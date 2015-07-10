


type 
  WxCommandLinkButtonBase* {.importcpp: "wxCommandLinkButtonBase", 
                             header: "<wx/wx.h>".} = object of WxButton
  

proc constructwxCommandLinkButtonBase*(): WxCommandLinkButtonBase {.cdecl, 
    constructor, importcpp: "wxCommandLinkButtonBase(@)", header: "<wx/wx.h>".}
proc constructwxCommandLinkButtonBase*(parent: ptr WxWindow; id: WxWindowID; 
                                       mainLabel: WxString = wxEmptyString; 
                                       note: WxString = wxEmptyString; 
                                       pos: WxPoint = wxDefaultPosition; 
                                       size: WxSize = wxDefaultSize; 
                                       style: clong = 0; validator: WxValidator = wxDefaultValidator; 
    name: WxString = constructWxString("button")): WxCommandLinkButtonBase {.
    cdecl, constructor, importcpp: "wxCommandLinkButtonBase(@)", 
    header: "<wx/wx.h>".}
proc setMainLabelAndNote*(this: var WxCommandLinkButtonBase; 
                          mainLabel: WxString; note: WxString) {.cdecl, 
    importcpp: "SetMainLabelAndNote", header: "<wx/wx.h>".}
proc setMainLabel*(this: var WxCommandLinkButtonBase; mainLabel: WxString) {.
    cdecl, importcpp: "SetMainLabel", header: "<wx/wx.h>".}
proc setNote*(this: var WxCommandLinkButtonBase; note: WxString) {.cdecl, 
    importcpp: "SetNote", header: "<wx/wx.h>".}
proc getMainLabel*(this: WxCommandLinkButtonBase): WxString {.noSideEffect, 
    cdecl, importcpp: "GetMainLabel", header: "<wx/wx.h>".}
proc getNote*(this: WxCommandLinkButtonBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetNote", header: "<wx/wx.h>".}

type 
  WxGenericCommandLinkButton* {.importcpp: "wxGenericCommandLinkButton", 
                                header: "<wx/wx.h>".} = object of WxCommandLinkButtonBase
  

proc constructwxGenericCommandLinkButton*(): WxGenericCommandLinkButton {.cdecl, 
    constructor, importcpp: "wxGenericCommandLinkButton(@)", header: "<wx/wx.h>".}
proc constructwxGenericCommandLinkButton*(parent: ptr WxWindow; id: WxWindowID; 
    mainLabel: WxString = wxEmptyString; note: WxString = wxEmptyString; 
    pos: WxPoint = wxDefaultPosition; size: WxSize = wxDefaultSize; 
    style: clong = 0; validator: WxValidator = wxDefaultValidator; 
    name: WxString = constructWxString("button")): WxGenericCommandLinkButton {.
    cdecl, constructor, importcpp: "wxGenericCommandLinkButton(@)", 
    header: "<wx/wx.h>".}
proc create*(this: var WxGenericCommandLinkButton; parent: ptr WxWindow; 
             id: WxWindowID; mainLabel: WxString = wxEmptyString; 
             note: WxString = wxEmptyString; pos: WxPoint = wxDefaultPosition; 
             size: WxSize = wxDefaultSize; style: clong = 0; 
             validator: WxValidator = wxDefaultValidator; 
             name: WxString = constructWxString("button")): bool {.cdecl, 
    importcpp: "Create", header: "<wx/wx.h>".}
proc setMainLabelAndNote*(this: var WxGenericCommandLinkButton; 
                          mainLabel: WxString; note: WxString) {.cdecl, 
    importcpp: "SetMainLabelAndNote", header: "<wx/wx.h>".}
type 
  WxCommandLinkButton* {.importcpp: "wxCommandLinkButton", header: "<wx/wx.h>".} = object of WxGenericCommandLinkButton
  

proc constructwxCommandLinkButton*(): WxCommandLinkButton {.cdecl, constructor, 
    importcpp: "wxCommandLinkButton(@)", header: "<wx/wx.h>".}
proc constructwxCommandLinkButton*(parent: ptr WxWindow; id: WxWindowID; 
                                   mainLabel: WxString = wxEmptyString; 
                                   note: WxString = wxEmptyString; 
                                   pos: WxPoint = wxDefaultPosition; 
                                   size: WxSize = wxDefaultSize; 
                                   style: clong = 0; 
                                   validator: WxValidator = wxDefaultValidator; 
                                   name: WxString = constructWxString("button")): WxCommandLinkButton {.
    cdecl, constructor, importcpp: "wxCommandLinkButton(@)", header: "<wx/wx.h>".}