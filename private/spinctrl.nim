


discard "forward decl of wxSpinDoubleEvent"
var wxEVT_SPINCTRL* {.importcpp: "wxEVT_SPINCTRL", header: wxh.}: WxEventTypeTag[
    WxSpinEvent]

var wxEVT_SPINCTRLDOUBLE* {.importcpp: "wxEVT_SPINCTRLDOUBLE", header: wxh.}: WxEventTypeTag[
    WxSpinDoubleEvent]


type 
  WxSpinCtrlBase* {.importcpp: "wxSpinCtrlBase", header: wxh.} = object of WxControl
  

proc constructwxSpinCtrlBase*(): WxSpinCtrlBase {.cdecl, constructor, 
    importcpp: "wxSpinCtrlBase(@)", header: wxh.}
proc getSnapToTicks*(this: WxSpinCtrlBase): bool {.noSideEffect, cdecl, 
    importcpp: "GetSnapToTicks", header: wxh.}
proc setValue*(this: var WxSpinCtrlBase; value: WxString) {.cdecl, 
    importcpp: "SetValue", header: wxh.}
proc setSnapToTicks*(this: var WxSpinCtrlBase; snapToTicks: bool) {.cdecl, 
    importcpp: "SetSnapToTicks", header: wxh.}
proc getBase*(this: WxSpinCtrlBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetBase", header: wxh.}
proc setBase*(this: var WxSpinCtrlBase; base: cint): bool {.cdecl, 
    importcpp: "SetBase", header: wxh.}
proc setSelection*(this: var WxSpinCtrlBase; `from`: clong; to: clong) {.cdecl, 
    importcpp: "SetSelection", header: wxh.}

type 
  WxSpinDoubleEvent* {.importcpp: "wxSpinDoubleEvent", header: wxh.} = object of WxNotifyEvent
  

proc constructwxSpinDoubleEvent*(commandType: WxEventType = wxEVT_NULL; 
                                 winid: cint = 0; value: cdouble = 0): WxSpinDoubleEvent {.
    cdecl, constructor, importcpp: "wxSpinDoubleEvent(@)", header: wxh.}
proc constructwxSpinDoubleEvent*(event: WxSpinDoubleEvent): WxSpinDoubleEvent {.
    cdecl, constructor, importcpp: "wxSpinDoubleEvent(@)", header: wxh.}
proc getValue*(this: WxSpinDoubleEvent): cdouble {.noSideEffect, cdecl, 
    importcpp: "GetValue", header: wxh.}
proc setValue*(this: var WxSpinDoubleEvent; value: cdouble) {.cdecl, 
    importcpp: "SetValue", header: wxh.}
proc clone*(this: WxSpinDoubleEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}

template wxSpinDoubleEventHandler*(`func`: expr): expr = 
  wxEVENT_HANDLER_CAST(wxSpinDoubleEventFunction, `func`)


template evt_Spinctrl*(id, fn: expr): expr = 
  wxDECLARE_EVT1(wxEVT_SPINCTRL, id, wxSpinEventHandler(fn))

template evt_Spinctrldouble*(id, fn: expr): expr = 
  wxDECLARE_EVT1(wxEVT_SPINCTRLDOUBLE, id, wxSpinDoubleEventHandler(fn))
