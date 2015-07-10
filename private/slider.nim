



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
  WxSliderBase* {.importcpp: "wxSliderBase", header: "<wx/wx.h>".} = object of WxControl
  

proc constructwxSliderBase*(): WxSliderBase {.cdecl, constructor, 
    importcpp: "wxSliderBase(@)", header: "<wx/wx.h>".}
proc getValue*(this: WxSliderBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetValue", header: "<wx/wx.h>".}
proc setValue*(this: var WxSliderBase; value: cint) {.cdecl, 
    importcpp: "SetValue", header: "<wx/wx.h>".}
proc setRange*(this: var WxSliderBase; minValue: cint; maxValue: cint) {.cdecl, 
    importcpp: "SetRange", header: "<wx/wx.h>".}
proc getMin*(this: WxSliderBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetMin", header: "<wx/wx.h>".}
proc getMax*(this: WxSliderBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetMax", header: "<wx/wx.h>".}
proc setMin*(this: var WxSliderBase; minValue: cint) {.cdecl, 
    importcpp: "SetMin", header: "<wx/wx.h>".}
proc setMax*(this: var WxSliderBase; maxValue: cint) {.cdecl, 
    importcpp: "SetMax", header: "<wx/wx.h>".}
proc setLineSize*(this: var WxSliderBase; lineSize: cint) {.cdecl, 
    importcpp: "SetLineSize", header: "<wx/wx.h>".}
proc setPageSize*(this: var WxSliderBase; pageSize: cint) {.cdecl, 
    importcpp: "SetPageSize", header: "<wx/wx.h>".}
proc getLineSize*(this: WxSliderBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetLineSize", header: "<wx/wx.h>".}
proc getPageSize*(this: WxSliderBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetPageSize", header: "<wx/wx.h>".}
proc setThumbLength*(this: var WxSliderBase; lenPixels: cint) {.cdecl, 
    importcpp: "SetThumbLength", header: "<wx/wx.h>".}
proc getThumbLength*(this: WxSliderBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetThumbLength", header: "<wx/wx.h>".}
proc setTickFreq*(this: var WxSliderBase; freq: cint) {.cdecl, 
    importcpp: "SetTickFreq", header: "<wx/wx.h>".}
proc getTickFreq*(this: WxSliderBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetTickFreq", header: "<wx/wx.h>".}
proc clearTicks*(this: var WxSliderBase) {.cdecl, importcpp: "ClearTicks", 
    header: "<wx/wx.h>".}
proc setTick*(this: var WxSliderBase; tickPos: cint) {.cdecl, 
    importcpp: "SetTick", header: "<wx/wx.h>".}
proc clearSel*(this: var WxSliderBase) {.cdecl, importcpp: "ClearSel", 
    header: "<wx/wx.h>".}
proc getSelEnd*(this: WxSliderBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetSelEnd", header: "<wx/wx.h>".}
proc getSelStart*(this: WxSliderBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetSelStart", header: "<wx/wx.h>".}
proc setSelection*(this: var WxSliderBase; min: cint; max: cint) {.cdecl, 
    importcpp: "SetSelection", header: "<wx/wx.h>".}
