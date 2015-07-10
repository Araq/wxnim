



const 
  wxSL_HORIZONTAL* = wxHORIZONTAL
  wxSL_VERTICAL* = wxVERTICAL
  wxSL_TICKS* = 0x00000010
  wxSL_AUTOTICKS* = wxSL_TICKS
  wxSL_LEFT* = 0x00000040
  wxSL_TOP* = 0x00000080
  wxSL_RIGHT* = 0x00000100
  wxSL_BOTTOM* = 0x00000200
  wxSL_BOTH* = 0x00000400
  wxSL_SELRANGE* = 0x00000800
  wxSL_INVERSE* = 0x00001000
  wxSL_MIN_MAX_LABELS* = 0x00002000
  wxSL_VALUE_LABEL* = 0x00004000
  wxSL_LABELS* = (wxSL_MIN_MAX_LABELS or wxSL_VALUE_LABEL)


const 
  wxSL_NOTIFY_DRAG* = 0x00000000


type 
  WxSliderBase* {.importcpp: "wxSliderBase", header: wxh.} = object of WxControl
  

proc constructwxSliderBase*(): WxSliderBase {.cdecl, constructor, 
    importcpp: "wxSliderBase(@)", header: wxh.}
proc getValue*(this: WxSliderBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetValue", header: wxh.}
proc setValue*(this: var WxSliderBase; value: cint) {.cdecl, 
    importcpp: "SetValue", header: wxh.}
proc setRange*(this: var WxSliderBase; minValue: cint; maxValue: cint) {.cdecl, 
    importcpp: "SetRange", header: wxh.}
proc getMin*(this: WxSliderBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetMin", header: wxh.}
proc getMax*(this: WxSliderBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetMax", header: wxh.}
proc setMin*(this: var WxSliderBase; minValue: cint) {.cdecl, 
    importcpp: "SetMin", header: wxh.}
proc setMax*(this: var WxSliderBase; maxValue: cint) {.cdecl, 
    importcpp: "SetMax", header: wxh.}
proc setLineSize*(this: var WxSliderBase; lineSize: cint) {.cdecl, 
    importcpp: "SetLineSize", header: wxh.}
proc setPageSize*(this: var WxSliderBase; pageSize: cint) {.cdecl, 
    importcpp: "SetPageSize", header: wxh.}
proc getLineSize*(this: WxSliderBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetLineSize", header: wxh.}
proc getPageSize*(this: WxSliderBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetPageSize", header: wxh.}
proc setThumbLength*(this: var WxSliderBase; lenPixels: cint) {.cdecl, 
    importcpp: "SetThumbLength", header: wxh.}
proc getThumbLength*(this: WxSliderBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetThumbLength", header: wxh.}
proc setTickFreq*(this: var WxSliderBase; freq: cint) {.cdecl, 
    importcpp: "SetTickFreq", header: wxh.}
proc getTickFreq*(this: WxSliderBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetTickFreq", header: wxh.}
proc clearTicks*(this: var WxSliderBase) {.cdecl, importcpp: "ClearTicks", 
    header: wxh.}
proc setTick*(this: var WxSliderBase; tickPos: cint) {.cdecl, 
    importcpp: "SetTick", header: wxh.}
proc clearSel*(this: var WxSliderBase) {.cdecl, importcpp: "ClearSel", 
    header: wxh.}
proc getSelEnd*(this: WxSliderBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetSelEnd", header: wxh.}
proc getSelStart*(this: WxSliderBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetSelStart", header: wxh.}
proc setSelection*(this: var WxSliderBase; min: cint; max: cint) {.cdecl, 
    importcpp: "SetSelection", header: wxh.}
