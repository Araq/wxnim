


const 
  wxCHK_2STATE* = 0x00004000
  wxCHK_3STATE* = 0x00001000


const 
  wxCHK_ALLOW_3RD_STATE_FOR_USER* = 0x00002000


type 
  WxCheckBoxBase* {.importcpp: "wxCheckBoxBase", header: "<wx/wx.h>".} = object of WxControl
  

proc constructwxCheckBoxBase*(): WxCheckBoxBase {.cdecl, constructor, 
    importcpp: "wxCheckBoxBase(@)", header: "<wx/wx.h>".}
proc setValue*(this: var WxCheckBoxBase; value: bool) {.cdecl, 
    importcpp: "SetValue", header: "<wx/wx.h>".}
proc getValue*(this: WxCheckBoxBase): bool {.noSideEffect, cdecl, 
    importcpp: "GetValue", header: "<wx/wx.h>".}
proc isChecked*(this: WxCheckBoxBase): bool {.noSideEffect, cdecl, 
    importcpp: "IsChecked", header: "<wx/wx.h>".}
proc get3StateValue*(this: WxCheckBoxBase): WxCheckBoxState {.noSideEffect, 
    cdecl, importcpp: "Get3StateValue", header: "<wx/wx.h>".}
proc set3StateValue*(this: var WxCheckBoxBase; state: WxCheckBoxState) {.cdecl, 
    importcpp: "Set3StateValue", header: "<wx/wx.h>".}
proc is3State*(this: WxCheckBoxBase): bool {.noSideEffect, cdecl, 
    importcpp: "Is3State", header: "<wx/wx.h>".}
proc is3rdStateAllowedForUser*(this: WxCheckBoxBase): bool {.noSideEffect, 
    cdecl, importcpp: "Is3rdStateAllowedForUser", header: "<wx/wx.h>".}
proc hasTransparentBackground*(this: var WxCheckBoxBase): bool {.cdecl, 
    importcpp: "HasTransparentBackground", header: "<wx/wx.h>".}
proc doUpdateWindowUI*(this: var WxCheckBoxBase; event: var WxUpdateUIEvent) {.
    cdecl, importcpp: "DoUpdateWindowUI", header: "<wx/wx.h>".}
type 
  WxCheckBox* {.importcpp: "wxCheckBox", header: "<wx/wx.h>".} = object of WxCheckBoxBase
  

proc constructwxCheckBox*(): WxCheckBox {.cdecl, constructor, 
    importcpp: "wxCheckBox(@)", header: "<wx/wx.h>".}
proc constructwxCheckBox*(parent: ptr WxWindow; id: WxWindowID; label: WxString; 
                          pos: WxPoint = wxDefaultPosition; 
                          size: WxSize = wxDefaultSize; style: clong = 0; 
                          validator: WxValidator = wxDefaultValidator; 
                          name: WxString = constructWxString("checkbox")): WxCheckBox {.
    cdecl, constructor, importcpp: "wxCheckBox(@)", header: "<wx/wx.h>".}
proc create*(this: var WxCheckBox; parent: ptr WxWindow; id: WxWindowID; 
             label: WxString; pos: WxPoint = wxDefaultPosition; 
             size: WxSize = wxDefaultSize; style: clong = 0; 
             validator: WxValidator = wxDefaultValidator; 
             name: WxString = constructWxString("checkbox")): bool {.cdecl, 
    importcpp: "Create", header: "<wx/wx.h>".}
proc setValue*(this: var WxCheckBox; value: bool) {.cdecl, 
    importcpp: "SetValue", header: "<wx/wx.h>".}
proc getValue*(this: WxCheckBox): bool {.noSideEffect, cdecl, 
    importcpp: "GetValue", header: "<wx/wx.h>".}
proc setLabel*(this: var WxCheckBox; label: WxString) {.cdecl, 
    importcpp: "SetLabel", header: "<wx/wx.h>".}
proc command*(this: var WxCheckBox; event: var WxCommandEvent) {.cdecl, 
    importcpp: "Command", header: "<wx/wx.h>".}
proc setForegroundColour*(this: var WxCheckBox; colour: WxColour): bool {.cdecl, 
    importcpp: "SetForegroundColour", header: "<wx/wx.h>".}
proc canApplyThemeBorder*(this: WxCheckBox): bool {.noSideEffect, cdecl, 
    importcpp: "CanApplyThemeBorder", header: "<wx/wx.h>".}