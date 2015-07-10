


discard "forward decl of wxSpinDoubleEvent"
var wxEVT_SPINCTRL* {.importcpp: "wxEVT_SPINCTRL", header: "<wx/wx.h>".}: WxEventTypeTag[
    WxSpinEvent]

var wxEVT_SPINCTRLDOUBLE* {.importcpp: "wxEVT_SPINCTRLDOUBLE", 
                            header: "<wx/wx.h>".}: WxEventTypeTag[
    WxSpinDoubleEvent]


type 
  WxSpinCtrlBase* {.importcpp: "wxSpinCtrlBase", header: "<wx/wx.h>".} = object of WxControl
  

proc constructwxSpinCtrlBase*(): WxSpinCtrlBase {.cdecl, constructor, 
    importcpp: "wxSpinCtrlBase(@)", header: "<wx/wx.h>".}
proc getSnapToTicks*(this: WxSpinCtrlBase): bool {.noSideEffect, cdecl, 
    importcpp: "GetSnapToTicks", header: "<wx/wx.h>".}
proc setValue*(this: var WxSpinCtrlBase; value: WxString) {.cdecl, 
    importcpp: "SetValue", header: "<wx/wx.h>".}
proc setSnapToTicks*(this: var WxSpinCtrlBase; snapToTicks: bool) {.cdecl, 
    importcpp: "SetSnapToTicks", header: "<wx/wx.h>".}
proc getBase*(this: WxSpinCtrlBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetBase", header: "<wx/wx.h>".}
proc setBase*(this: var WxSpinCtrlBase; base: cint): bool {.cdecl, 
    importcpp: "SetBase", header: "<wx/wx.h>".}
proc setSelection*(this: var WxSpinCtrlBase; `from`: clong; to: clong) {.cdecl, 
    importcpp: "SetSelection", header: "<wx/wx.h>".}

type 
  WxSpinDoubleEvent* {.importcpp: "wxSpinDoubleEvent", header: "<wx/wx.h>".} = object of WxNotifyEvent
  

proc constructwxSpinDoubleEvent*(commandType: WxEventType = wxEVT_NULL; 
                                 winid: cint = 0; value: cdouble = 0): WxSpinDoubleEvent {.
    cdecl, constructor, importcpp: "wxSpinDoubleEvent(@)", header: "<wx/wx.h>".}
proc constructwxSpinDoubleEvent*(event: WxSpinDoubleEvent): WxSpinDoubleEvent {.
    cdecl, constructor, importcpp: "wxSpinDoubleEvent(@)", header: "<wx/wx.h>".}
proc getValue*(this: WxSpinDoubleEvent): cdouble {.noSideEffect, cdecl, 
    importcpp: "GetValue", header: "<wx/wx.h>".}
proc setValue*(this: var WxSpinDoubleEvent; value: cdouble) {.cdecl, 
    importcpp: "SetValue", header: "<wx/wx.h>".}
proc clone*(this: WxSpinDoubleEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: "<wx/wx.h>".}

template wxSpinDoubleEventHandler*(`func`: expr): expr = 
  wxEVENT_HANDLER_CAST(wxSpinDoubleEventFunction, `func`)


template evt_Spinctrl*(id, fn: expr): expr = 
  wxDECLARE_EVT1(wxEVT_SPINCTRL, id, wxSpinEventHandler(fn))

template evt_Spinctrldouble*(id, fn: expr): expr = 
  wxDECLARE_EVT1(wxEVT_SPINCTRLDOUBLE, id, wxSpinDoubleEventHandler(fn))
