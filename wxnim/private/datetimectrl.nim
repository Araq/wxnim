

const 
  wxNEEDS_DATETIMEPICKCTRL* = true


type 
  WxDateTimePickerCtrlBase* {.importcpp: "wxDateTimePickerCtrlBase", header: wxh.} = object of WxControl
  

proc setValue*(this: var WxDateTimePickerCtrlBase; dt: WxDateTime) {.cdecl, 
    importcpp: "SetValue", header: wxh.}
proc getValue*(this: WxDateTimePickerCtrlBase): WxDateTime {.noSideEffect, 
    cdecl, importcpp: "GetValue", header: wxh.}
type 
  WxDateTimePickerCtrl* = WxDateTimePickerCtrlBase
