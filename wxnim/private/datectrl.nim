


const 
  wxDP_DEFAULT* = 0
  wxDP_SPIN* = 1
  wxDP_DROPDOWN* = 2
  wxDP_SHOWCENTURY* = 4
  wxDP_ALLOWNONE* = 8


type 
  WxDatePickerCtrlBase* {.importcpp: "wxDatePickerCtrlBase", header: wxh.} = object of WxDateTimePickerCtrl
  

proc setRange*(this: var WxDatePickerCtrlBase; dt1: WxDateTime; dt2: WxDateTime) {.
    cdecl, importcpp: "SetRange", header: wxh.}
proc getRange*(this: WxDatePickerCtrlBase; dt1: ptr WxDateTime; 
               dt2: ptr WxDateTime): bool {.noSideEffect, cdecl, 
    importcpp: "GetRange", header: wxh.}
type 
  WxDatePickerCtrl* {.importcpp: "wxDatePickerCtrl", header: wxh.} = object of WxDatePickerCtrlBase
  

proc constructwxDatePickerCtrl*(): WxDatePickerCtrl {.cdecl, constructor, 
    importcpp: "wxDatePickerCtrl(@)", header: wxh.}
proc constructwxDatePickerCtrl*(parent: ptr WxWindow; id: WxWindowID; 
                                date: WxDateTime = wxDefaultDateTime; 
                                pos: WxPoint = wxDefaultPosition; 
                                size: WxSize = wxDefaultSize; style: clong = wxDP_DEFAULT or
    wxDP_SHOWCENTURY; validator: WxValidator = wxDefaultValidator; 
                                name: WxString = constructWxString("datectrl")): WxDatePickerCtrl {.
    cdecl, constructor, importcpp: "wxDatePickerCtrl(@)", header: wxh.}