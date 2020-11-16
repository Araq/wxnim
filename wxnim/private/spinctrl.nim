
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
proc setBase*(this: var WxSpinCtrlBase; base: cint): bool {.discardable, cdecl, 
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
type 
  WxSpinCtrl* {.importcpp: "wxSpinCtrl", header: wxh.} = object of WxSpinButton
  

proc constructwxSpinCtrl*(): WxSpinCtrl {.cdecl, constructor, 
    importcpp: "wxSpinCtrl(@)", header: wxh.}
proc constructwxSpinCtrl*(parent: ptr WxWindow; id: WxWindowID = wxID_ANY; 
                          value: WxString = wxEmptyString; 
                          pos: WxPoint = wxDefaultPosition; 
                          size: WxSize = wxDefaultSize; 
                          style: clong = wxSP_ARROW_KEYS or int(wxALIGN_RIGHT); 
                          min: cint = 0; max: cint = 100; initial: cint = 0; 
                          name: WxString = constructWxString("wxSpinCtrl")): WxSpinCtrl {.
    cdecl, constructor, importcpp: "wxSpinCtrl(@)", header: wxh.}
proc create*(this: var WxSpinCtrl; parent: ptr WxWindow; 
             id: WxWindowID = wxID_ANY; value: WxString = wxEmptyString; 
             pos: WxPoint = wxDefaultPosition; size: WxSize = wxDefaultSize; 
             style: clong = wxSP_ARROW_KEYS or int(wxALIGN_RIGHT); 
             min: cint = 0; max: cint = 100; initial: cint = 0; 
             name: WxString = constructWxString("wxSpinCtrl")): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc setValue*(this: var WxSpinCtrl; text: WxString) {.cdecl, 
    importcpp: "SetValue", header: wxh.}
proc setSelection*(this: var WxSpinCtrl; `from`: clong; to: clong) {.cdecl, 
    importcpp: "SetSelection", header: wxh.}
proc getBase*(this: WxSpinCtrl): cint {.noSideEffect, cdecl, 
                                        importcpp: "GetBase", header: wxh.}
proc setBase*(this: var WxSpinCtrl; base: cint): bool {.discardable, cdecl, 
    importcpp: "SetBase", header: wxh.}
proc destroywxSpinCtrl*(this: var WxSpinCtrl) {.cdecl, 
    importcpp: "#.~wxSpinCtrl()", header: wxh.}
proc setValue*(this: var WxSpinCtrl; val: cint) {.cdecl, importcpp: "SetValue", 
    header: wxh.}
proc getValue*(this: WxSpinCtrl): cint {.noSideEffect, cdecl, 
    importcpp: "GetValue", header: wxh.}
proc setRange*(this: var WxSpinCtrl; minVal: cint; maxVal: cint) {.cdecl, 
    importcpp: "SetRange", header: wxh.}
proc setFont*(this: var WxSpinCtrl; font: WxFont): bool {.discardable, cdecl, 
    importcpp: "SetFont", header: wxh.}
proc setFocus*(this: var WxSpinCtrl) {.cdecl, importcpp: "SetFocus", header: wxh.}
proc enable*(this: var WxSpinCtrl; enable: bool = true): bool {.cdecl, 
    importcpp: "Enable", header: wxh.}
proc show*(this: var WxSpinCtrl; show: bool = true): bool {.discardable, cdecl, 
    importcpp: "Show", header: wxh.}
proc reparent*(this: var WxSpinCtrl; newParent: ptr WxWindowBase): bool {.cdecl, 
    importcpp: "Reparent", header: wxh.}
proc acceptsFocus*(this: WxSpinCtrl): bool {.noSideEffect, cdecl, 
    importcpp: "AcceptsFocus", header: wxh.}
proc getDefaultAttributes*(this: WxSpinCtrl): WxVisualAttributes {.noSideEffect, 
    cdecl, importcpp: "GetDefaultAttributes", header: wxh.}

template wxSpinDoubleEventHandler*(`func`: untyped): untyped = 
  wxEVENT_HANDLER_CAST(wxSpinDoubleEventFunction, `func`)


template evt_Spinctrl*(id, fn: untyped): untyped = 
  wxDECLARE_EVT1(wxEVT_SPINCTRL, id, wxSpinEventHandler(fn))

template evt_Spinctrldouble*(id, fn: untyped): untyped = 
  wxDECLARE_EVT1(wxEVT_SPINCTRLDOUBLE, id, wxSpinDoubleEventHandler(fn))
