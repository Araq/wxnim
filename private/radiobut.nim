


type 
  WxRadioButton* {.importcpp: "wxRadioButton", header: "<wx/wx.h>".} = object of WxCheckBox
  

proc constructwxRadioButton*(): WxRadioButton {.cdecl, constructor, 
    importcpp: "wxRadioButton(@)", header: "<wx/wx.h>".}
proc constructwxRadioButton*(parent: ptr WxWindow; id: WxWindowID; 
                             label: WxString; pos: WxPoint = wxDefaultPosition; 
                             size: WxSize = wxDefaultSize; style: clong = 0; 
                             validator: WxValidator = wxDefaultValidator; 
                             name: WxString = constructWxString("radioButton")): WxRadioButton {.
    cdecl, constructor, importcpp: "wxRadioButton(@)", header: "<wx/wx.h>".}
proc create*(this: var WxRadioButton; parent: ptr WxWindow; id: WxWindowID; 
             label: WxString; pos: WxPoint = wxDefaultPosition; 
             size: WxSize = wxDefaultSize; style: clong = 0; 
             validator: WxValidator = wxDefaultValidator; 
             name: WxString = constructWxString("radioButton")): bool {.cdecl, 
    importcpp: "Create", header: "<wx/wx.h>".}
proc changeValue*(this: var WxRadioButton; value: bool) {.cdecl, 
    importcpp: "ChangeValue", header: "<wx/wx.h>".}