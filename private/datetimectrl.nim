

const 
  wxNEEDS_DATETIMEPICKCTRL* = true


type 
  WxDateTimePickerCtrlBase* {.importcpp: "wxDateTimePickerCtrlBase", 
                              header: "wx.h".} = object of WxControl
  

proc setValue*(this: var WxDateTimePickerCtrlBase; dt: WxDateTime) {.cdecl, 
    importcpp: "SetValue", header: "wx.h".}
proc getValue*(this: WxDateTimePickerCtrlBase): WxDateTime {.noSideEffect, 
    cdecl, importcpp: "GetValue", header: "wx.h".}
type 
  WxDateTimePickerCtrl* = WxDateTimePickerCtrlBase
