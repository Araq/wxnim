

discard "forward decl of wxFontPickerEvent"
type 
  WxPickerBase* {.importcpp: "wxPickerBase", header: "<wx/wx.h>".} = object of WxControl
  


type 
  WxFontPickerWidgetBase* {.importcpp: "wxFontPickerWidgetBase", 
                            header: "<wx/wx.h>".} = object 
  

proc constructwxFontPickerWidgetBase*(): WxFontPickerWidgetBase {.cdecl, 
    constructor, importcpp: "wxFontPickerWidgetBase(@)", header: "<wx/wx.h>".}
proc destroywxFontPickerWidgetBase*(this: var WxFontPickerWidgetBase) {.cdecl, 
    importcpp: "#.~wxFontPickerWidgetBase()", header: "<wx/wx.h>".}
proc getSelectedFont*(this: WxFontPickerWidgetBase): WxFont {.noSideEffect, 
    cdecl, importcpp: "GetSelectedFont", header: "<wx/wx.h>".}
proc setSelectedFont*(this: var WxFontPickerWidgetBase; f: WxFont) {.cdecl, 
    importcpp: "SetSelectedFont", header: "<wx/wx.h>".}

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
  WxFontPickerCtrl* {.importcpp: "wxFontPickerCtrl", header: "<wx/wx.h>".} = object of WxPickerBase
  

proc constructwxFontPickerCtrl*(): WxFontPickerCtrl {.cdecl, constructor, 
    importcpp: "wxFontPickerCtrl(@)", header: "<wx/wx.h>".}
proc destroywxFontPickerCtrl*(this: var WxFontPickerCtrl) {.cdecl, 
    importcpp: "#.~wxFontPickerCtrl()", header: "<wx/wx.h>".}
proc constructwxFontPickerCtrl*(parent: ptr WxWindow; id: WxWindowID; 
                                initial: WxFont = wxNullFont; 
                                pos: WxPoint = wxDefaultPosition; 
                                size: WxSize = wxDefaultSize; 
                                style: clong = wxFNTP_DEFAULT_STYLE; 
                                validator: WxValidator = wxDefaultValidator; 
    name: WxString = constructWxString("fontpicker")): WxFontPickerCtrl {.cdecl, 
    constructor, importcpp: "wxFontPickerCtrl(@)", header: "<wx/wx.h>".}
proc create*(this: var WxFontPickerCtrl; parent: ptr WxWindow; id: WxWindowID; 
             initial: WxFont = wxNullFont; pos: WxPoint = wxDefaultPosition; 
             size: WxSize = wxDefaultSize; style: clong = wxFNTP_DEFAULT_STYLE; 
             validator: WxValidator = wxDefaultValidator; 
             name: WxString = constructWxString("fontpicker")): bool {.cdecl, 
    importcpp: "Create", header: "<wx/wx.h>".}
proc getSelectedFont*(this: WxFontPickerCtrl): WxFont {.noSideEffect, cdecl, 
    importcpp: "GetSelectedFont", header: "<wx/wx.h>".}
proc setSelectedFont*(this: var WxFontPickerCtrl; f: WxFont) {.cdecl, 
    importcpp: "SetSelectedFont", header: "<wx/wx.h>".}
proc setMaxPointSize*(this: var WxFontPickerCtrl; max: cuint) {.cdecl, 
    importcpp: "SetMaxPointSize", header: "<wx/wx.h>".}
proc getMaxPointSize*(this: WxFontPickerCtrl): cuint {.noSideEffect, cdecl, 
    importcpp: "GetMaxPointSize", header: "<wx/wx.h>".}
proc updatePickerFromTextCtrl*(this: var WxFontPickerCtrl) {.cdecl, 
    importcpp: "UpdatePickerFromTextCtrl", header: "<wx/wx.h>".}
proc updateTextCtrlFromPicker*(this: var WxFontPickerCtrl) {.cdecl, 
    importcpp: "UpdateTextCtrlFromPicker", header: "<wx/wx.h>".}
proc onFontChange*(this: var WxFontPickerCtrl; a3: var WxFontPickerEvent) {.
    cdecl, importcpp: "OnFontChange", header: "<wx/wx.h>".}
proc font2String*(this: var WxFontPickerCtrl; font: WxFont): WxString {.cdecl, 
    importcpp: "Font2String", header: "<wx/wx.h>".}
proc string2Font*(this: var WxFontPickerCtrl; font: WxString): WxFont {.cdecl, 
    importcpp: "String2Font", header: "<wx/wx.h>".}

var wxEVT_FONTPICKER_CHANGED* {.importcpp: "wxEVT_FONTPICKER_CHANGED", 
                                header: "<wx/wx.h>".}: WxEventTypeTag[
    WxFontPickerEvent]

type 
  WxFontPickerEvent* {.importcpp: "wxFontPickerEvent", header: "<wx/wx.h>".} = object of WxCommandEvent
  

proc constructwxFontPickerEvent*(): WxFontPickerEvent {.cdecl, constructor, 
    importcpp: "wxFontPickerEvent(@)", header: "<wx/wx.h>".}
proc constructwxFontPickerEvent*(generator: ptr WxObject; id: cint; f: WxFont): WxFontPickerEvent {.
    cdecl, constructor, importcpp: "wxFontPickerEvent(@)", header: "<wx/wx.h>".}
proc getFont*(this: WxFontPickerEvent): WxFont {.noSideEffect, cdecl, 
    importcpp: "GetFont", header: "<wx/wx.h>".}
proc setFont*(this: var WxFontPickerEvent; c: WxFont) {.cdecl, 
    importcpp: "SetFont", header: "<wx/wx.h>".}
proc clone*(this: WxFontPickerEvent): ptr WxEvent {.noSideEffect, cdecl, 
    importcpp: "Clone", header: "<wx/wx.h>".}
template wxFontPickerEventHandler*(`func`: expr): expr = 
  wxEVENT_HANDLER_CAST(wxFontPickerEventFunction, `func`)

template evt_Fontpicker_Changed*(id, fn: expr): expr = 
  wxDECLARE_EVT1(wxEVT_FONTPICKER_CHANGED, id, wxFontPickerEventHandler(fn))

