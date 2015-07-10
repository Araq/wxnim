

discard "forward decl of wxFontPickerEvent"
type 
  WxPickerBase* {.importcpp: "wxPickerBase", header: wxh.} = object of WxControl
  


type 
  WxFontPickerWidgetBase* {.importcpp: "wxFontPickerWidgetBase", header: wxh.} = object 
  

proc constructwxFontPickerWidgetBase*(): WxFontPickerWidgetBase {.cdecl, 
    constructor, importcpp: "wxFontPickerWidgetBase(@)", header: wxh.}
proc destroywxFontPickerWidgetBase*(this: var WxFontPickerWidgetBase) {.cdecl, 
    importcpp: "#.~wxFontPickerWidgetBase()", header: wxh.}
proc getSelectedFont*(this: WxFontPickerWidgetBase): WxFont {.noSideEffect, 
    cdecl, importcpp: "GetSelectedFont", header: wxh.}
proc setSelectedFont*(this: var WxFontPickerWidgetBase; f: WxFont) {.cdecl, 
    importcpp: "SetSelectedFont", header: wxh.}

const 
  wxFNTP_FONTDESC_AS_LABEL* = 0x00000008


const 
  wxFNTP_USEFONT_FOR_LABEL* = 0x00000010
  wxFONTBTN_DEFAULT_STYLE* = (
    wxFNTP_FONTDESC_AS_LABEL or wxFNTP_USEFONT_FOR_LABEL)


const 
  wxFNTP_DEFAULT_STYLE* = (wxFNTP_FONTDESC_AS_LABEL or
      wxFNTP_USEFONT_FOR_LABEL)


const 
  wxFNTP_MAXPOINT_SIZE* = 100


type 
  WxFontPickerCtrl* {.importcpp: "wxFontPickerCtrl", header: wxh.} = object of WxPickerBase
  

proc constructwxFontPickerCtrl*(): WxFontPickerCtrl {.cdecl, constructor, 
    importcpp: "wxFontPickerCtrl(@)", header: wxh.}
proc destroywxFontPickerCtrl*(this: var WxFontPickerCtrl) {.cdecl, 
    importcpp: "#.~wxFontPickerCtrl()", header: wxh.}
proc constructwxFontPickerCtrl*(parent: ptr WxWindow; id: WxWindowID; 
                                initial: WxFont = wxNullFont; 
                                pos: WxPoint = wxDefaultPosition; 
                                size: WxSize = wxDefaultSize; 
                                style: clong = wxFNTP_DEFAULT_STYLE; 
                                validator: WxValidator = wxDefaultValidator; 
    name: WxString = constructWxString("fontpicker")): WxFontPickerCtrl {.cdecl, 
    constructor, importcpp: "wxFontPickerCtrl(@)", header: wxh.}
proc create*(this: var WxFontPickerCtrl; parent: ptr WxWindow; id: WxWindowID; 
             initial: WxFont = wxNullFont; pos: WxPoint = wxDefaultPosition; 
             size: WxSize = wxDefaultSize; style: clong = wxFNTP_DEFAULT_STYLE; 
             validator: WxValidator = wxDefaultValidator; 
             name: WxString = constructWxString("fontpicker")): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc getSelectedFont*(this: WxFontPickerCtrl): WxFont {.noSideEffect, cdecl, 
    importcpp: "GetSelectedFont", header: wxh.}
proc setSelectedFont*(this: var WxFontPickerCtrl; f: WxFont) {.cdecl, 
    importcpp: "SetSelectedFont", header: wxh.}
proc setMaxPointSize*(this: var WxFontPickerCtrl; max: cuint) {.cdecl, 
    importcpp: "SetMaxPointSize", header: wxh.}
proc getMaxPointSize*(this: WxFontPickerCtrl): cuint {.noSideEffect, cdecl, 
    importcpp: "GetMaxPointSize", header: wxh.}
proc updatePickerFromTextCtrl*(this: var WxFontPickerCtrl) {.cdecl, 
    importcpp: "UpdatePickerFromTextCtrl", header: wxh.}
proc updateTextCtrlFromPicker*(this: var WxFontPickerCtrl) {.cdecl, 
    importcpp: "UpdateTextCtrlFromPicker", header: wxh.}
proc onFontChange*(this: var WxFontPickerCtrl; a3: var WxFontPickerEvent) {.
    cdecl, importcpp: "OnFontChange", header: wxh.}
proc font2String*(this: var WxFontPickerCtrl; font: WxFont): WxString {.cdecl, 
    importcpp: "Font2String", header: wxh.}
proc string2Font*(this: var WxFontPickerCtrl; font: WxString): WxFont {.cdecl, 
    importcpp: "String2Font", header: wxh.}

var wxEVT_FONTPICKER_CHANGED* {.importcpp: "wxEVT_FONTPICKER_CHANGED", 
                                header: wxh.}: WxEventTypeTag[WxFontPickerEvent]

type 
  WxFontPickerEvent* {.importcpp: "wxFontPickerEvent", header: wxh.} = object of WxCommandEvent
  

proc constructwxFontPickerEvent*(): WxFontPickerEvent {.cdecl, constructor, 
    importcpp: "wxFontPickerEvent(@)", header: wxh.}
proc constructwxFontPickerEvent*(generator: ptr WxObject; id: cint; f: WxFont): WxFontPickerEvent {.
    cdecl, constructor, importcpp: "wxFontPickerEvent(@)", header: wxh.}
proc getFont*(this: WxFontPickerEvent): WxFont {.noSideEffect, cdecl, 
    importcpp: "GetFont", header: wxh.}
proc setFont*(this: var WxFontPickerEvent; c: WxFont) {.cdecl, 
    importcpp: "SetFont", header: wxh.}
proc clone*(this: WxFontPickerEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: wxh.}
template wxFontPickerEventHandler*(`func`: expr): expr = 
  wxEVENT_HANDLER_CAST(wxFontPickerEventFunction, `func`)

template evt_Fontpicker_Changed*(id, fn: expr): expr = 
  wxDECLARE_EVT1(wxEVT_FONTPICKER_CHANGED, id, wxFontPickerEventHandler(fn))

