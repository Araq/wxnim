

var wxEVT_TOGGLEBUTTON* {.importcpp: "wxEVT_TOGGLEBUTTON", header: wxh.}: WxEventType


type
  WxToggleButton* {.importcpp: "wxToggleButton", header: wxh.} = object of WxAnyButton
  

proc constructwxToggleButton*(): WxToggleButton {.cdecl, constructor,
    importcpp: "wxToggleButton(@)", header: wxh.}
proc constructwxToggleButton*(parent: ptr WxWindow; id: WxWindowID; label: WxString;
                             pos: WxPoint = wxDefaultPosition;
                             size: WxSize = wxDefaultSize; style: clong = 0;
                             val: WxValidator = wxDefaultValidator;
                             name: WxString = constructWxString("checkbox")): WxToggleButton {.
    cdecl, constructor, importcpp: "wxToggleButton(@)", header: wxh.}
proc destroywxToggleButton*(this: var WxToggleButton) {.cdecl,
    importcpp: "#.~wxToggleButton()", header: wxh.}
proc create*(this: var WxToggleButton; parent: ptr WxWindow; id: WxWindowID;
            label: WxString; pos: WxPoint = wxDefaultPosition;
            size: WxSize = wxDefaultSize; style: clong = 0;
            val: WxValidator = wxDefaultValidator;
            name: WxString = constructWxString("checkbox")): bool {.cdecl,
    importcpp: "Create", header: wxh.}
proc getValue*(this: WxToggleButton): bool {.noSideEffect, cdecl,
    importcpp: "GetValue", header: wxh.}
proc setValue*(this: var WxToggleButton; state: bool) {.cdecl, importcpp: "SetValue",
    header: wxh.}

type
  WxBitmapToggleButton* {.importcpp: "wxBitmapToggleButton", header: wxh.} = object of WxToggleButton
  

proc constructwxBitmapToggleButton*(): WxBitmapToggleButton {.cdecl, constructor,
    importcpp: "wxBitmapToggleButton(@)", header: wxh.}
proc constructwxBitmapToggleButton*(parent: ptr WxWindow; id: WxWindowID;
                                   label: WxBitmap;
                                   pos: WxPoint = wxDefaultPosition;
                                   size: WxSize = wxDefaultSize; style: clong = 0;
                                   val: WxValidator = wxDefaultValidator; name: WxString = constructWxString(
    "checkbox")): WxBitmapToggleButton {.cdecl, constructor,
                                       importcpp: "wxBitmapToggleButton(@)",
                                       header: wxh.}
proc create*(this: var WxBitmapToggleButton; parent: ptr WxWindow; id: WxWindowID;
            label: WxBitmap; pos: WxPoint = wxDefaultPosition;
            size: WxSize = wxDefaultSize; style: clong = 0;
            val: WxValidator = wxDefaultValidator;
            name: WxString = constructWxString("checkbox")): bool {.cdecl,
    importcpp: "Create", header: wxh.}
proc getValue*(this: WxBitmapToggleButton): bool {.noSideEffect, cdecl,
    importcpp: "GetValue", header: wxh.}
proc setValue*(this: var WxBitmapToggleButton; state: bool) {.cdecl,
    importcpp: "SetValue", header: wxh.}