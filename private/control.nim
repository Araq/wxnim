



type 
  WxEllipsizeFlags* {.size: sizeof(cint), importcpp: "wxEllipsizeFlags", 
                      header: "<wx/wx.h>".} = enum 
    wxELLIPSIZE_FLAGS_NONE = 0, wxELLIPSIZE_FLAGS_PROCESS_MNEMONICS = 1, 
    wxELLIPSIZE_FLAGS_EXPAND_TABS = 2, wxELLIPSIZE_FLAGS_DEFAULT = 1 or 2



type 
  WxEllipsizeMode* {.size: sizeof(cint), importcpp: "wxEllipsizeMode", 
                     header: "<wx/wx.h>".} = enum 
    wxELLIPSIZE_NONE, wxELLIPSIZE_START, wxELLIPSIZE_MIDDLE, wxELLIPSIZE_END



var wxDefaultValidator* {.importcpp: "wxDefaultValidator", header: "<wx/wx.h>".}: WxValidator

type 
  WxControlBase* {.importcpp: "wxControlBase", header: "<wx/wx.h>".} = object of WxWindow
  

proc constructwxControlBase*(): WxControlBase {.cdecl, constructor, 
    importcpp: "wxControlBase(@)", header: "<wx/wx.h>".}
proc destroywxControlBase*(this: var WxControlBase) {.cdecl, 
    importcpp: "#.~wxControlBase()", header: "<wx/wx.h>".}
proc create*(this: var WxControlBase; parent: ptr WxWindow; id: WxWindowID; 
             pos: WxPoint = wxDefaultPosition; size: WxSize = wxDefaultSize; 
             style: clong = 0; validator: WxValidator = wxDefaultValidator; 
             name: WxString = constructWxString("control")): bool {.cdecl, 
    importcpp: "Create", header: "<wx/wx.h>".}
proc getAlignment*(this: WxControlBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetAlignment", header: "<wx/wx.h>".}
proc setLabel*(this: var WxControlBase; label: WxString) {.cdecl, 
    importcpp: "SetLabel", header: "<wx/wx.h>".}
proc getLabel*(this: WxControlBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetLabel", header: "<wx/wx.h>".}
proc setLabelText*(this: var WxControlBase; text: WxString) {.cdecl, 
    importcpp: "SetLabelText", header: "<wx/wx.h>".}
proc getLabelText*(this: WxControlBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetLabelText", header: "<wx/wx.h>".}
proc setLabelMarkup*(this: var WxControlBase; markup: WxString): bool {.cdecl, 
    importcpp: "SetLabelMarkup", header: "<wx/wx.h>".}
proc shouldInheritColours*(this: WxControlBase): bool {.noSideEffect, cdecl, 
    importcpp: "ShouldInheritColours", header: "<wx/wx.h>".}
proc command*(this: var WxControlBase; event: var WxCommandEvent) {.cdecl, 
    importcpp: "Command", header: "<wx/wx.h>".}
proc setFont*(this: var WxControlBase; font: WxFont): bool {.cdecl, 
    importcpp: "SetFont", header: "<wx/wx.h>".}
proc doUpdateWindowUI*(this: var WxControlBase; event: var WxUpdateUIEvent) {.
    cdecl, importcpp: "DoUpdateWindowUI", header: "<wx/wx.h>".}
proc getSizeFromTextSize*(this: WxControlBase; xlen: cint; ylen: cint = - 1): WxSize {.
    noSideEffect, cdecl, importcpp: "GetSizeFromTextSize", header: "<wx/wx.h>".}
proc getSizeFromTextSize*(this: WxControlBase; tsize: WxSize): WxSize {.
    noSideEffect, cdecl, importcpp: "GetSizeFromTextSize", header: "<wx/wx.h>".}
proc getLabelText*(label: WxString): WxString {.cdecl, 
    importcpp: "wxControlBase::GetLabelText(@)", header: "<wx/wx.h>".}
proc removeMnemonics*(str: WxString): WxString {.cdecl, 
    importcpp: "wxControlBase::RemoveMnemonics(@)", header: "<wx/wx.h>".}
proc escapeMnemonics*(str: WxString): WxString {.cdecl, 
    importcpp: "wxControlBase::EscapeMnemonics(@)", header: "<wx/wx.h>".}
proc findAccelIndex*(label: WxString; labelOnly: ptr WxString = nil): cint {.
    cdecl, importcpp: "wxControlBase::FindAccelIndex(@)", header: "<wx/wx.h>".}
proc getCompositeControlsDefaultAttributes*(variant: WxWindowVariant): WxVisualAttributes {.
    cdecl, importcpp: "wxControlBase::GetCompositeControlsDefaultAttributes(@)", 
    header: "<wx/wx.h>".}

type 
  WxControl* {.importcpp: "wxControl", header: "<wx/wx.h>".} = object of WxControlBase
  

proc constructwxControl*(): WxControl {.cdecl, constructor, 
                                        importcpp: "wxControl(@)", 
                                        header: "<wx/wx.h>".}
proc constructwxControl*(parent: ptr WxWindow; id: WxWindowID; 
                         pos: WxPoint = wxDefaultPosition; 
                         size: WxSize = wxDefaultSize; style: clong = 0; 
                         validator: WxValidator = wxDefaultValidator; 
                         name: WxString = constructWxString("control")): WxControl {.
    cdecl, constructor, importcpp: "wxControl(@)", header: "<wx/wx.h>".}
proc create*(this: var WxControl; parent: ptr WxWindow; id: WxWindowID; 
             pos: WxPoint = wxDefaultPosition; size: WxSize = wxDefaultSize; 
             style: clong = 0; validator: WxValidator = wxDefaultValidator; 
             name: WxString = constructWxString("control")): bool {.cdecl, 
    importcpp: "Create", header: "<wx/wx.h>".}
proc command*(this: var WxControl; event: var WxCommandEvent) {.cdecl, 
    importcpp: "Command", header: "<wx/wx.h>".}
proc getDefaultAttributes*(this: WxControl): WxVisualAttributes {.noSideEffect, 
    cdecl, importcpp: "GetDefaultAttributes", header: "<wx/wx.h>".}
proc processCommand*(this: var WxControl; event: var WxCommandEvent): bool {.
    cdecl, importcpp: "ProcessCommand", header: "<wx/wx.h>".}
