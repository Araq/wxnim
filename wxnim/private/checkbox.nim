


const 
  wxCHK_2STATE* = 0x00004000
  wxCHK_3STATE* = 0x00001000


const 
  wxCHK_ALLOW_3RD_STATE_FOR_USER* = 0x00002000


type 
  WxCheckBoxBase* {.importcpp: "wxCheckBoxBase", header: wxh.} = object of WxControl
  

proc constructwxCheckBoxBase*(): WxCheckBoxBase {.cdecl, constructor, 
    importcpp: "wxCheckBoxBase(@)", header: wxh.}
proc setValue*(this: var WxCheckBoxBase; value: bool) {.cdecl, 
    importcpp: "SetValue", header: wxh.}
proc getValue*(this: WxCheckBoxBase): bool {.noSideEffect, cdecl, 
    importcpp: "GetValue", header: wxh.}
proc isChecked*(this: WxCheckBoxBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsChecked", header: wxh.}
proc get3StateValue*(this: WxCheckBoxBase): WxCheckBoxState {.noSideEffect, 
    cdecl, importcpp: "Get3StateValue", header: wxh.}
proc set3StateValue*(this: var WxCheckBoxBase; state: WxCheckBoxState) {.cdecl, 
    importcpp: "Set3StateValue", header: wxh.}
proc is3State*(this: WxCheckBoxBase): bool {.noSideEffect, cdecl, 
    importcpp: "Is3State", header: wxh.}
proc is3rdStateAllowedForUser*(this: WxCheckBoxBase): bool {.noSideEffect, 
    cdecl, importcpp: "Is3rdStateAllowedForUser", header: wxh.}
proc hasTransparentBackground*(this: var WxCheckBoxBase): bool {.cdecl, 
    importcpp: "HasTransparentBackground", header: wxh.}
proc doUpdateWindowUI*(this: var WxCheckBoxBase; event: var WxUpdateUIEvent) {.
    cdecl, importcpp: "DoUpdateWindowUI", header: wxh.}
type 
  WxCheckBox* {.importcpp: "wxCheckBox", header: wxh.} = object of WxCheckBoxBase
  

proc constructwxCheckBox*(): WxCheckBox {.cdecl, constructor, 
    importcpp: "wxCheckBox(@)", header: wxh.}
proc constructwxCheckBox*(parent: ptr WxWindow; id: WxWindowID; label: WxString; 
                          pos: WxPoint = wxDefaultPosition; 
                          size: WxSize = wxDefaultSize; style: clong = 0; 
                          validator: WxValidator = wxDefaultValidator; 
                          name: WxString = constructWxString("checkbox")): WxCheckBox {.
    cdecl, constructor, importcpp: "wxCheckBox(@)", header: wxh.}
proc create*(this: var WxCheckBox; parent: ptr WxWindow; id: WxWindowID; 
             label: WxString; pos: WxPoint = wxDefaultPosition; 
             size: WxSize = wxDefaultSize; style: clong = 0; 
             validator: WxValidator = wxDefaultValidator; 
             name: WxString = constructWxString("checkbox")): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc setValue*(this: var WxCheckBox; value: bool) {.cdecl, 
    importcpp: "SetValue", header: wxh.}
proc getValue*(this: WxCheckBox): bool {.noSideEffect, cdecl, 
    importcpp: "GetValue", header: wxh.}
proc setLabel*(this: var WxCheckBox; label: WxString) {.cdecl, 
    importcpp: "SetLabel", header: wxh.}
proc command*(this: var WxCheckBox; event: var WxCommandEvent) {.cdecl, 
    importcpp: "Command", header: wxh.}
proc setForegroundColour*(this: var WxCheckBox; colour: WxColour): bool {.
    discardable, cdecl, importcpp: "SetForegroundColour", header: wxh.}
proc canApplyThemeBorder*(this: WxCheckBox): bool {.noSideEffect, cdecl, 
    importcpp: "CanApplyThemeBorder", header: wxh.}