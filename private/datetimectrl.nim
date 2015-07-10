

const 
  wxNEEDS_DATETIMEPICKCTRL* = true


type 
  WxDateTimePickerCtrlBase* {.importcpp: "wxDateTimePickerCtrlBase", 
                              header: "<wx/wx.h>".} = object of WxControl
  

proc setValue*(this: var WxDateTimePickerCtrlBase; dt: WxDateTime) {.cdecl, 
    importcpp: "SetValue", header: "<wx/wx.h>".}
proc getValue*(this: WxDateTimePickerCtrlBase): WxDateTime {.noSideEffect, 
    cdecl, importcpp: "GetValue", header: "<wx/wx.h>".}
type 
  WxDateTimePickerCtrl* = WxDateTimePickerCtrlBase
