

type 
  WxPosition* {.importcpp: "wxPosition", header: "<wx/wx.h>".} = object 
  

proc constructwxPosition*(): WxPosition {.cdecl, constructor, 
    importcpp: "wxPosition(@)", header: "<wx/wx.h>".}
proc constructwxPosition*(row: cint; col: cint): WxPosition {.cdecl, 
    constructor, importcpp: "wxPosition(@)", header: "<wx/wx.h>".}
proc getRow*(this: WxPosition): cint {.noSideEffect, cdecl, importcpp: "GetRow", 
                                       header: "<wx/wx.h>".}
proc getColumn*(this: WxPosition): cint {.noSideEffect, cdecl, 
    importcpp: "GetColumn", header: "<wx/wx.h>".}
proc getCol*(this: WxPosition): cint {.noSideEffect, cdecl, importcpp: "GetCol", 
                                       header: "<wx/wx.h>".}
proc setRow*(this: var WxPosition; row: cint) {.cdecl, importcpp: "SetRow", 
    header: "<wx/wx.h>".}
proc setColumn*(this: var WxPosition; column: cint) {.cdecl, 
    importcpp: "SetColumn", header: "<wx/wx.h>".}
proc setCol*(this: var WxPosition; column: cint) {.cdecl, importcpp: "SetCol", 
    header: "<wx/wx.h>".}
proc `==`*(this: WxPosition; p: WxPosition): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: "<wx/wx.h>".}
proc `+=`*(this: var WxPosition; p: WxPosition) {.cdecl, importcpp: "(# += #)", 
    header: "<wx/wx.h>".}
proc `-=`*(this: var WxPosition; p: WxPosition) {.cdecl, importcpp: "(# -= #)", 
    header: "<wx/wx.h>".}
proc `+=`*(this: var WxPosition; s: WxSize) {.cdecl, importcpp: "(# += #)", 
    header: "<wx/wx.h>".}
proc `-=`*(this: var WxPosition; s: WxSize) {.cdecl, importcpp: "(# -= #)", 
    header: "<wx/wx.h>".}
proc `+`*(this: WxPosition; p: WxPosition): WxPosition {.noSideEffect, cdecl, 
    importcpp: "(# + #)", header: "<wx/wx.h>".}
proc `-`*(this: WxPosition; p: WxPosition): WxPosition {.noSideEffect, cdecl, 
    importcpp: "(# - #)", header: "<wx/wx.h>".}
proc `+`*(this: WxPosition; s: WxSize): WxPosition {.noSideEffect, cdecl, 
    importcpp: "(# + #)", header: "<wx/wx.h>".}
proc `-`*(this: WxPosition; s: WxSize): WxPosition {.noSideEffect, cdecl, 
    importcpp: "(# - #)", header: "<wx/wx.h>".}