

type 
  WxPosition* {.importcpp: "wxPosition", header: wxh.} = object 
  

proc constructwxPosition*(): WxPosition {.cdecl, constructor, 
    importcpp: "wxPosition(@)", header: wxh.}
proc constructwxPosition*(row: cint; col: cint): WxPosition {.cdecl, 
    constructor, importcpp: "wxPosition(@)", header: wxh.}
proc getRow*(this: WxPosition): cint {.noSideEffect, cdecl, importcpp: "GetRow", 
                                       header: wxh.}
proc getColumn*(this: WxPosition): cint {.noSideEffect, cdecl, 
    importcpp: "GetColumn", header: wxh.}
proc getCol*(this: WxPosition): cint {.noSideEffect, cdecl, importcpp: "GetCol", 
                                       header: wxh.}
proc setRow*(this: var WxPosition; row: cint) {.cdecl, importcpp: "SetRow", 
    header: wxh.}
proc setColumn*(this: var WxPosition; column: cint) {.cdecl, 
    importcpp: "SetColumn", header: wxh.}
proc setCol*(this: var WxPosition; column: cint) {.cdecl, importcpp: "SetCol", 
    header: wxh.}
proc `==`*(this: WxPosition; p: WxPosition): bool {.noSideEffect, cdecl, 
    importcpp: "(# == #)", header: wxh.}
proc `+=`*(this: var WxPosition; p: WxPosition) {.cdecl, importcpp: "(# += #)", 
    header: wxh.}
proc `-=`*(this: var WxPosition; p: WxPosition) {.cdecl, importcpp: "(# -= #)", 
    header: wxh.}
proc `+=`*(this: var WxPosition; s: WxSize) {.cdecl, importcpp: "(# += #)", 
    header: wxh.}
proc `-=`*(this: var WxPosition; s: WxSize) {.cdecl, importcpp: "(# -= #)", 
    header: wxh.}
proc `+`*(this: WxPosition; p: WxPosition): WxPosition {.noSideEffect, cdecl, 
    importcpp: "(# + #)", header: wxh.}
proc `-`*(this: WxPosition; p: WxPosition): WxPosition {.noSideEffect, cdecl, 
    importcpp: "(# - #)", header: wxh.}
proc `+`*(this: WxPosition; s: WxSize): WxPosition {.noSideEffect, cdecl, 
    importcpp: "(# + #)", header: wxh.}
proc `-`*(this: WxPosition; s: WxSize): WxPosition {.noSideEffect, cdecl, 
    importcpp: "(# - #)", header: wxh.}