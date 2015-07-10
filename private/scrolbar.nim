


type 
  WxScrollBarBase* {.importcpp: "wxScrollBarBase", header: "<wx/wx.h>".} = object of WxControl
  

proc constructwxScrollBarBase*(): WxScrollBarBase {.cdecl, constructor, 
    importcpp: "wxScrollBarBase(@)", header: "<wx/wx.h>".}
proc getThumbPosition*(this: WxScrollBarBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetThumbPosition", header: "<wx/wx.h>".}
proc getThumbSize*(this: WxScrollBarBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetThumbSize", header: "<wx/wx.h>".}
proc getPageSize*(this: WxScrollBarBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetPageSize", header: "<wx/wx.h>".}
proc getRange*(this: WxScrollBarBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetRange", header: "<wx/wx.h>".}
proc isVertical*(this: WxScrollBarBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsVertical", header: "<wx/wx.h>".}
proc setThumbPosition*(this: var WxScrollBarBase; viewStart: cint) {.cdecl, 
    importcpp: "SetThumbPosition", header: "<wx/wx.h>".}
proc setScrollbar*(this: var WxScrollBarBase; position: cint; thumbSize: cint; 
                   range: cint; pageSize: cint; refresh: bool = true) {.cdecl, 
    importcpp: "SetScrollbar", header: "<wx/wx.h>".}
proc isNeeded*(this: WxScrollBarBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsNeeded", header: "<wx/wx.h>".}
