


discard "forward decl of wxSpinDoubleEvent"
var wxEVT_SPINCTRL* {.importcpp: "wxEVT_SPINCTRL", header: "wx.h".}: WxEventTypeTag[
    WxSpinEvent]

var wxEVT_SPINCTRLDOUBLE* {.importcpp: "wxEVT_SPINCTRLDOUBLE", header: "wx.h".}: WxEventTypeTag[
    WxSpinDoubleEvent]


type 
  WxSpinCtrlBase* {.importcpp: "wxSpinCtrlBase", header: "wx.h".} = object of WxControl
  

proc constructwxSpinCtrlBase*(): WxSpinCtrlBase {.cdecl, constructor, 
    importcpp: "wxSpinCtrlBase(@)", header: "wx.h".}
proc getSnapToTicks*(this: WxSpinCtrlBase): bool {.noSideEffect, cdecl, 
    importcpp: "GetSnapToTicks", header: "wx.h".}
proc setValue*(this: var WxSpinCtrlBase; value: WxString) {.cdecl, 
    importcpp: "SetValue", header: "wx.h".}
proc setSnapToTicks*(this: var WxSpinCtrlBase; snapToTicks: bool) {.cdecl, 
    importcpp: "SetSnapToTicks", header: "wx.h".}
proc getBase*(this: WxSpinCtrlBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetBase", header: "wx.h".}
proc setBase*(this: var WxSpinCtrlBase; base: cint): bool {.cdecl, 
    importcpp: "SetBase", header: "wx.h".}
proc setSelection*(this: var WxSpinCtrlBase; `from`: clong; to: clong) {.cdecl, 
    importcpp: "SetSelection", header: "wx.h".}

type 
  WxSpinDoubleEvent* {.importcpp: "wxSpinDoubleEvent", header: "wx.h".} = object of WxNotifyEvent
    mValue* {.importc: "m_value".}: cdouble


proc constructwxSpinDoubleEvent*(commandType: WxEventType = wxEVT_NULL; 
                                 winid: cint = 0; value: cdouble = 0): WxSpinDoubleEvent {.
    cdecl, constructor, importcpp: "wxSpinDoubleEvent(@)", header: "wx.h".}
proc constructwxSpinDoubleEvent*(event: WxSpinDoubleEvent): WxSpinDoubleEvent {.
    cdecl, constructor, importcpp: "wxSpinDoubleEvent(@)", header: "wx.h".}
proc getValue*(this: WxSpinDoubleEvent): cdouble {.noSideEffect, cdecl, 
    importcpp: "GetValue", header: "wx.h".}
proc setValue*(this: var WxSpinDoubleEvent; value: cdouble) {.cdecl, 
    importcpp: "SetValue", header: "wx.h".}
proc clone*(this: WxSpinDoubleEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: "wx.h".}

template wxSpinDoubleEventHandler*(`func`: expr): expr = 
  wxEVENT_HANDLER_CAST(wxSpinDoubleEventFunction, `func`)


template evt_Spinctrl*(id, fn: expr): expr = 
  wxDECLARE_EVT1(wxEVT_SPINCTRL, id, wxSpinEventHandler(fn))

template evt_Spinctrldouble*(id, fn: expr): expr = 
  wxDECLARE_EVT1(wxEVT_SPINCTRLDOUBLE, id, wxSpinDoubleEventHandler(fn))
