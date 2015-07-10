


const 
  wxGA_HORIZONTAL* = wxHORIZONTAL
  wxGA_VERTICAL* = wxVERTICAL


const 
  wxGA_SMOOTH* = 0x00000020


const 
  wxGA_PROGRESSBAR* = 0


const 
  wxGAUGE_EMULATE_INDETERMINATE_MODE* = 1


type 
  WxGaugeBase* {.importcpp: "wxGaugeBase", header: wxh.} = object of WxControl
  

proc constructwxGaugeBase*(): WxGaugeBase {.cdecl, constructor, 
    importcpp: "wxGaugeBase(@)", header: wxh.}
proc destroywxGaugeBase*(this: var WxGaugeBase) {.cdecl, 
    importcpp: "#.~wxGaugeBase()", header: wxh.}
proc create*(this: var WxGaugeBase; parent: ptr WxWindow; id: WxWindowID; 
             range: cint; pos: WxPoint = wxDefaultPosition; 
             size: WxSize = wxDefaultSize; style = wxGA_HORIZONTAL; 
             validator: WxValidator = wxDefaultValidator; 
             name: WxString = constructWxString("gauge")): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc setRange*(this: var WxGaugeBase; range: cint) {.cdecl, 
    importcpp: "SetRange", header: wxh.}
proc getRange*(this: WxGaugeBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetRange", header: wxh.}
proc setValue*(this: var WxGaugeBase; pos: cint) {.cdecl, importcpp: "SetValue", 
    header: wxh.}
proc getValue*(this: WxGaugeBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetValue", header: wxh.}
proc pulse*(this: var WxGaugeBase) {.cdecl, importcpp: "Pulse", header: wxh.}
proc isVertical*(this: WxGaugeBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsVertical", header: wxh.}
proc setShadowWidth*(this: var WxGaugeBase; w: cint) {.cdecl, 
    importcpp: "SetShadowWidth", header: wxh.}
proc getShadowWidth*(this: WxGaugeBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetShadowWidth", header: wxh.}
proc setBezelFace*(this: var WxGaugeBase; w: cint) {.cdecl, 
    importcpp: "SetBezelFace", header: wxh.}
proc getBezelFace*(this: WxGaugeBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetBezelFace", header: wxh.}
proc acceptsFocus*(this: WxGaugeBase): bool {.noSideEffect, cdecl, 
    importcpp: "AcceptsFocus", header: wxh.}
