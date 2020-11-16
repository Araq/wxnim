



type 
  WxEllipsizeFlags* {.size: sizeof(cint), importcpp: "wxEllipsizeFlags", 
                      header: wxh.} = enum 
    wxELLIPSIZE_FLAGS_NONE = 0, wxELLIPSIZE_FLAGS_PROCESS_MNEMONICS = 1, 
    wxELLIPSIZE_FLAGS_EXPAND_TABS = 2, wxELLIPSIZE_FLAGS_DEFAULT = 1 or 2



type 
  WxEllipsizeMode* {.size: sizeof(cint), importcpp: "wxEllipsizeMode", 
                     header: wxh.} = enum 
    wxELLIPSIZE_NONE, wxELLIPSIZE_START, wxELLIPSIZE_MIDDLE, wxELLIPSIZE_END



var wxDefaultValidator* {.importcpp: "wxDefaultValidator", header: wxh.}: WxValidator

type 
  WxControlBase* {.importcpp: "wxControlBase", header: wxh.} = object of WxWindow
  

proc constructwxControlBase*(): WxControlBase {.cdecl, constructor, 
    importcpp: "wxControlBase(@)", header: wxh.}
proc destroywxControlBase*(this: var WxControlBase) {.cdecl, 
    importcpp: "#.~wxControlBase()", header: wxh.}
proc create*(this: var WxControlBase; parent: ptr WxWindow; id: WxWindowID; 
             pos: WxPoint = wxDefaultPosition; size: WxSize = wxDefaultSize; 
             style: clong = 0; validator: WxValidator = wxDefaultValidator; 
             name: WxString = constructWxString("control")): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc getAlignment*(this: WxControlBase): cint {.noSideEffect, cdecl, 
    importcpp: "GetAlignment", header: wxh.}
proc setLabel*(this: var WxControlBase; label: WxString) {.cdecl, 
    importcpp: "SetLabel", header: wxh.}
proc getLabel*(this: WxControlBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetLabel", header: wxh.}
proc setLabelText*(this: var WxControlBase; text: WxString) {.cdecl, 
    importcpp: "SetLabelText", header: wxh.}
proc getLabelText*(this: WxControlBase): WxString {.noSideEffect, cdecl, 
    importcpp: "GetLabelText", header: wxh.}
proc setLabelMarkup*(this: var WxControlBase; markup: WxString): bool {.
    discardable, cdecl, importcpp: "SetLabelMarkup", header: wxh.}
proc shouldInheritColours*(this: WxControlBase): bool {.noSideEffect, cdecl, 
    importcpp: "ShouldInheritColours", header: wxh.}
proc command*(this: var WxControlBase; event: var WxCommandEvent) {.cdecl, 
    importcpp: "Command", header: wxh.}
proc setFont*(this: var WxControlBase; font: WxFont): bool {.discardable, cdecl, 
    importcpp: "SetFont", header: wxh.}
proc doUpdateWindowUI*(this: var WxControlBase; event: var WxUpdateUIEvent) {.
    cdecl, importcpp: "DoUpdateWindowUI", header: wxh.}
proc getSizeFromTextSize*(this: WxControlBase; xlen: cint; ylen: cint = - 1): WxSize {.
    noSideEffect, cdecl, importcpp: "GetSizeFromTextSize", header: wxh.}
proc getSizeFromTextSize*(this: WxControlBase; tsize: WxSize): WxSize {.
    noSideEffect, cdecl, importcpp: "GetSizeFromTextSize", header: wxh.}
proc getLabelText*(label: WxString): WxString {.cdecl, 
    importcpp: "wxControlBase::GetLabelText(@)", header: wxh.}
proc removeMnemonics*(str: WxString): WxString {.cdecl, 
    importcpp: "wxControlBase::RemoveMnemonics(@)", header: wxh.}
proc escapeMnemonics*(str: WxString): WxString {.cdecl, 
    importcpp: "wxControlBase::EscapeMnemonics(@)", header: wxh.}
proc findAccelIndex*(label: WxString; labelOnly: ptr WxString = nil): cint {.
    cdecl, importcpp: "wxControlBase::FindAccelIndex(@)", header: wxh.}
proc getCompositeControlsDefaultAttributes*(variant: WxWindowVariant): WxVisualAttributes {.
    cdecl, importcpp: "wxControlBase::GetCompositeControlsDefaultAttributes(@)", 
    header: wxh.}

type 
  WxControl* {.importcpp: "wxControl", header: wxh.} = object of WxControlBase
  

proc constructwxControl*(): WxControl {.cdecl, constructor, 
                                        importcpp: "wxControl(@)", header: wxh.}
proc constructwxControl*(parent: ptr WxWindow; id: WxWindowID; 
                         pos: WxPoint = wxDefaultPosition; 
                         size: WxSize = wxDefaultSize; style: clong = 0; 
                         validator: WxValidator = wxDefaultValidator; 
                         name: WxString = constructWxString("control")): WxControl {.
    cdecl, constructor, importcpp: "wxControl(@)", header: wxh.}
proc create*(this: var WxControl; parent: ptr WxWindow; id: WxWindowID; 
             pos: WxPoint = wxDefaultPosition; size: WxSize = wxDefaultSize; 
             style: clong = 0; validator: WxValidator = wxDefaultValidator; 
             name: WxString = constructWxString("control")): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc command*(this: var WxControl; event: var WxCommandEvent) {.cdecl, 
    importcpp: "Command", header: wxh.}
proc getDefaultAttributes*(this: WxControl): WxVisualAttributes {.noSideEffect, 
    cdecl, importcpp: "GetDefaultAttributes", header: wxh.}
proc processCommand*(this: var WxControl; event: var WxCommandEvent): bool {.
    cdecl, importcpp: "ProcessCommand", header: wxh.}
