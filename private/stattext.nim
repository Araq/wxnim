


const 
  wxST_NO_AUTORESIZE* = 0x00000001


const 
  wxST_ELLIPSIZE_START* = 0x00000004
  wxST_ELLIPSIZE_MIDDLE* = 0x00000008
  wxST_ELLIPSIZE_END* = 0x00000010

type 
  WxStaticTextBase* {.importcpp: "wxStaticTextBase", header: wxh.} = object of WxControl
  

proc constructwxStaticTextBase*(): WxStaticTextBase {.cdecl, constructor, 
    importcpp: "wxStaticTextBase(@)", header: wxh.}
proc wrap*(this: var WxStaticTextBase; width: cint) {.cdecl, importcpp: "Wrap", 
    header: wxh.}
proc acceptsFocus*(this: WxStaticTextBase): bool {.noSideEffect, cdecl, 
    importcpp: "AcceptsFocus", header: wxh.}
proc hasTransparentBackground*(this: var WxStaticTextBase): bool {.cdecl, 
    importcpp: "HasTransparentBackground", header: wxh.}
proc isEllipsized*(this: WxStaticTextBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsEllipsized", header: wxh.}
type 
  WxStaticText* {.importcpp: "wxStaticText", header: wxh.} = object of WxStaticTextBase
  

proc constructwxStaticText*(): WxStaticText {.cdecl, constructor, 
    importcpp: "wxStaticText(@)", header: wxh.}
proc constructwxStaticText*(parent: ptr WxWindow; id: WxWindowID; 
                            label: WxString; pos: WxPoint = wxDefaultPosition; 
                            size: WxSize = wxDefaultSize; style: clong = 0; 
                            name: WxString = constructWxString("staticText")): WxStaticText {.
    cdecl, constructor, importcpp: "wxStaticText(@)", header: wxh.}
proc create*(this: var WxStaticText; parent: ptr WxWindow; id: WxWindowID; 
             label: WxString; pos: WxPoint = wxDefaultPosition; 
             size: WxSize = wxDefaultSize; style: clong = 0; 
             name: WxString = constructWxString("staticText")): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc setLabel*(this: var WxStaticText; label: WxString) {.cdecl, 
    importcpp: "SetLabel", header: wxh.}
proc setFont*(this: var WxStaticText; font: WxFont): bool {.discardable, cdecl, 
    importcpp: "SetFont", header: wxh.}