


type 
  WxScrollBarBase* {.importcpp: "wxScrollBarBase", header: wxh.} = object of WxControl
  

proc constructwxScrollBarBase*(): WxScrollBarBase {.cdecl, constructor, 
    importcpp: "wxScrollBarBase(@)", header: wxh.}
proc getThumbPosition*(this: WxScrollBarBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetThumbPosition", header: wxh.}
proc getThumbSize*(this: WxScrollBarBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetThumbSize", header: wxh.}
proc getPageSize*(this: WxScrollBarBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetPageSize", header: wxh.}
proc getRange*(this: WxScrollBarBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetRange", header: wxh.}
proc isVertical*(this: WxScrollBarBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsVertical", header: wxh.}
proc setThumbPosition*(this: var WxScrollBarBase; viewStart: cint) {.cdecl, 
    importcpp: "SetThumbPosition", header: wxh.}
proc setScrollbar*(this: var WxScrollBarBase; position: cint; thumbSize: cint; 
                   range: cint; pageSize: cint; refresh: bool = true) {.cdecl, 
    importcpp: "SetScrollbar", header: wxh.}
proc isNeeded*(this: WxScrollBarBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsNeeded", header: wxh.}
