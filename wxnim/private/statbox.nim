

type
  WxStaticBox* {.importcpp: "wxStaticBox", header: wxh.} = object of WxControl
  

proc constructwxStaticBox*(): WxStaticBox {.cdecl, constructor,
    importcpp: "wxStaticBox(@)", header: wxh.}
proc constructwxStaticBox*(parent: ptr WxWindow; id: WxWindowID; label: WxString;
                          pos: WxPoint = wxDefaultPosition;
                          size: WxSize = wxDefaultSize; style: clong = 0;
                          name: WxString = "groupBox"): WxStaticBox {.cdecl,
    constructor, importcpp: "wxStaticBox(@)", header: wxh.}
proc destroywxStaticBox*(this: var WxStaticBox) {.cdecl,
    importcpp: "#.~wxStaticBox()", header: wxh.}
proc create*(this: var WxStaticBox; parent: ptr WxWindow; id: WxWindowID;
            label: WxString; pos: WxPoint = wxDefaultPosition;
            size: WxSize = wxDefaultSize; style: clong = 0;
            name: WxString = "groupBox"): bool {.cdecl, importcpp: "Create",
    header: wxh.}