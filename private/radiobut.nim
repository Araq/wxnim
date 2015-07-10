


type 
  WxRadioButton* {.importcpp: "wxRadioButton", header: wxh.} = object of WxCheckBox
  

proc constructwxRadioButton*(): WxRadioButton {.cdecl, constructor, 
    importcpp: "wxRadioButton(@)", header: wxh.}
proc constructwxRadioButton*(parent: ptr WxWindow; id: WxWindowID; 
                             label: WxString; pos: WxPoint = wxDefaultPosition; 
                             size: WxSize = wxDefaultSize; style: clong = 0; 
                             validator: WxValidator = wxDefaultValidator; 
                             name: WxString = constructWxString("radioButton")): WxRadioButton {.
    cdecl, constructor, importcpp: "wxRadioButton(@)", header: wxh.}
proc create*(this: var WxRadioButton; parent: ptr WxWindow; id: WxWindowID; 
             label: WxString; pos: WxPoint = wxDefaultPosition; 
             size: WxSize = wxDefaultSize; style: clong = 0; 
             validator: WxValidator = wxDefaultValidator; 
             name: WxString = constructWxString("radioButton")): bool {.cdecl, 
    importcpp: "Create", header: wxh.}
proc changeValue*(this: var WxRadioButton; value: bool) {.cdecl, 
    importcpp: "ChangeValue", header: wxh.}