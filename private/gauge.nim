


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
  WxGaugeBase* {.importcpp: "wxGaugeBase", header: "<wx/wx.h>".} = object of WxControl
  

proc constructwxGaugeBase*(): WxGaugeBase {.cdecl, constructor, 
    importcpp: "wxGaugeBase(@)", header: "<wx/wx.h>".}
proc destroywxGaugeBase*(this: var WxGaugeBase) {.cdecl, 
    importcpp: "#.~wxGaugeBase()", header: "<wx/wx.h>".}
proc create*(this: var WxGaugeBase; parent: ptr WxWindow; id: WxWindowID; 
             range: cint; pos: WxPoint = wxDefaultPosition; 
             size: WxSize = wxDefaultSize; style = wxGA_HORIZONTAL; 
             validator: WxValidator = wxDefaultValidator; 
             name: WxString = constructWxString("gauge")): bool {.cdecl, 
    importcpp: "Create", header: "<wx/wx.h>".}
proc setRange*(this: var WxGaugeBase; range: cint) {.cdecl, 
    importcpp: "SetRange", header: "<wx/wx.h>".}
proc getRange*(this: WxGaugeBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetRange", header: "<wx/wx.h>".}
proc setValue*(this: var WxGaugeBase; pos: cint) {.cdecl, importcpp: "SetValue", 
    header: "<wx/wx.h>".}
proc getValue*(this: WxGaugeBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetValue", header: "<wx/wx.h>".}
proc pulse*(this: var WxGaugeBase) {.cdecl, importcpp: "Pulse", 
                                     header: "<wx/wx.h>".}
proc isVertical*(this: WxGaugeBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsVertical", header: "<wx/wx.h>".}
proc setShadowWidth*(this: var WxGaugeBase; w: cint) {.cdecl, 
    importcpp: "SetShadowWidth", header: "<wx/wx.h>".}
proc getShadowWidth*(this: WxGaugeBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetShadowWidth", header: "<wx/wx.h>".}
proc setBezelFace*(this: var WxGaugeBase; w: cint) {.cdecl, 
    importcpp: "SetBezelFace", header: "<wx/wx.h>".}
proc getBezelFace*(this: WxGaugeBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetBezelFace", header: "<wx/wx.h>".}
proc acceptsFocus*(this: WxGaugeBase): bool {.noSideEffect, cdecl, 
    importcpp: "AcceptsFocus", header: "<wx/wx.h>".}
