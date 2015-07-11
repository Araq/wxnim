


type 
  WxRange* {.importcpp: "wxRange", header: wxh.} = object 
  

proc constructwxRange*(): WxRange {.cdecl, constructor, importcpp: "wxRange(@)", 
                                    header: wxh.}
proc constructwxRange*(minVal: cint; maxVal: cint): WxRange {.cdecl, 
    constructor, importcpp: "wxRange(@)", header: wxh.}
proc getMin*(this: WxRange): cint {.noSideEffect, cdecl, importcpp: "GetMin", 
                                    header: wxh.}
proc getMax*(this: WxRange): cint {.noSideEffect, cdecl, importcpp: "GetMax", 
                                    header: wxh.}

type 
  WxSpinButtonBase* {.importcpp: "wxSpinButtonBase", header: wxh.} = object of WxControl
  

proc constructwxSpinButtonBase*(): WxSpinButtonBase {.cdecl, constructor, 
    importcpp: "wxSpinButtonBase(@)", header: wxh.}
proc getValue*(this: WxSpinButtonBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetValue", header: wxh.}
proc getMin*(this: WxSpinButtonBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetMin", header: wxh.}
proc getMax*(this: WxSpinButtonBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetMax", header: wxh.}
proc getRange*(this: WxSpinButtonBase): WxRange {.noSideEffect, cdecl, 
    importcpp: "GetRange", header: wxh.}
proc setValue*(this: var WxSpinButtonBase; val: cint) {.cdecl, 
    importcpp: "SetValue", header: wxh.}
proc setMin*(this: var WxSpinButtonBase; minVal: cint) {.cdecl, 
    importcpp: "SetMin", header: wxh.}
proc setMax*(this: var WxSpinButtonBase; maxVal: cint) {.cdecl, 
    importcpp: "SetMax", header: wxh.}
proc setRange*(this: var WxSpinButtonBase; minVal: cint; maxVal: cint) {.cdecl, 
    importcpp: "SetRange", header: wxh.}
proc setRange*(this: var WxSpinButtonBase; range: WxRange) {.cdecl, 
    importcpp: "SetRange", header: wxh.}
proc isVertical*(this: WxSpinButtonBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsVertical", header: wxh.}

type 
  WxSpinEvent* {.importcpp: "wxSpinEvent", header: wxh.} = object of WxNotifyEvent
  

proc constructwxSpinEvent*(commandType: WxEventType = wxEVT_NULL; 
                           winid: cint = 0): WxSpinEvent {.cdecl, constructor, 
    importcpp: "wxSpinEvent(@)", header: wxh.}
proc constructwxSpinEvent*(event: WxSpinEvent): WxSpinEvent {.cdecl, 
    constructor, importcpp: "wxSpinEvent(@)", header: wxh.}
proc getValue*(this: WxSpinEvent): cint {.noSideEffect, cdecl, 
    importcpp: "GetValue", header: wxh.}
proc setValue*(this: var WxSpinEvent; value: cint) {.cdecl, 
    importcpp: "SetValue", header: wxh.}
proc getPosition*(this: WxSpinEvent): cint {.noSideEffect, cdecl, 
    importcpp: "GetPosition", header: wxh.}
proc setPosition*(this: var WxSpinEvent; pos: cint) {.cdecl, 
    importcpp: "SetPosition", header: wxh.}
proc clone*(this: WxSpinEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}
type 
  WxSpinButton* {.importcpp: "wxSpinButton", header: wxh.} = object of WxSpinButtonBase
  

proc constructwxSpinButton*(): WxSpinButton {.cdecl, constructor, 
    importcpp: "wxSpinButton(@)", header: wxh.}
proc constructwxSpinButton*(parent: ptr WxWindow; id: WxWindowID = wxID_ANY; 
                            pos: WxPoint = wxDefaultPosition; 
                            size: WxSize = wxDefaultSize; style: clong = int(
    wxSP_VERTICAL) or int(wxSP_ARROW_KEYS); 
                            name: WxString = constructWxString("wxSpinButton")): WxSpinButton {.
    cdecl, constructor, importcpp: "wxSpinButton(@)", header: wxh.}
proc destroywxSpinButton*(this: var WxSpinButton) {.cdecl, 
    importcpp: "#.~wxSpinButton()", header: wxh.}
proc create*(this: var WxSpinButton; parent: ptr WxWindow; 
             id: WxWindowID = wxID_ANY; pos: WxPoint = wxDefaultPosition; 
             size: WxSize = wxDefaultSize; 
             style: clong = int(wxSP_VERTICAL) or int(wxSP_ARROW_KEYS); 
             name: WxString = constructWxString("wxSpinButton")): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc getValue*(this: WxSpinButton): cint {.noSideEffect, cdecl, 
    importcpp: "GetValue", header: wxh.}
proc setValue*(this: var WxSpinButton; val: cint) {.cdecl, 
    importcpp: "SetValue", header: wxh.}
proc setRange*(this: var WxSpinButton; minVal: cint; maxVal: cint) {.cdecl, 
    importcpp: "SetRange", header: wxh.}
proc acceptsFocus*(this: WxSpinButton): bool {.noSideEffect, cdecl, 
    importcpp: "AcceptsFocus", header: wxh.}
proc canApplyThemeBorder*(this: WxSpinButton): bool {.noSideEffect, cdecl, 
    importcpp: "CanApplyThemeBorder", header: wxh.}
template wxSpinEventHandler*(`func`: expr): expr = 
  wxEVENT_HANDLER_CAST(wxSpinEventFunction, `func`)


template evt_Spin_Up*(winid, `func`: expr): expr = 
  wxDECLARE_EVT1(wxEVT_SPIN_UP, winid, wxSpinEventHandler(`func`))

template evt_Spin_Down*(winid, `func`: expr): expr = 
  wxDECLARE_EVT1(wxEVT_SPIN_DOWN, winid, wxSpinEventHandler(`func`))

template evt_Spin*(winid, `func`: expr): expr = 
  wxDECLARE_EVT1(wxEVT_SPIN, winid, wxSpinEventHandler(`func`))

