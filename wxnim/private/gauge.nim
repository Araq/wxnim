

const
  wxGA_HORIZONTAL* = wxHORIZONTAL
  wxGA_VERTICAL* = wxVERTICAL


const
  wxGA_SMOOTH* = 0x00000020


type
  WxGauge* {.importcpp: "wxGauge", header: wxh.} = object of WxControl


proc constructwxGauge*(): WxGauge {.cdecl, constructor, importcpp: "wxGauge(@)",
                                 header: wxh.}
proc constructwxGauge*(parent: ptr WxWindow; id: WxWindowID; range: cint;
                      pos: WxPoint = wxDefaultPosition;
                      size: WxSize = wxDefaultSize; style: clong = wxGA_HORIZONTAL;
                      validator: WxValidator = wxDefaultValidator;
                      name: WxString = constructWxString("gauge")): WxGauge {.cdecl,
    constructor, importcpp: "wxGauge(@)", header: wxh.}
proc destroywxGauge*(this: var WxGauge) {.cdecl, importcpp: "#.~wxGauge()", header: wxh.}
proc create*(this: var WxGauge; parent: ptr WxWindow; id: WxWindowID; range: cint;
            pos: WxPoint = wxDefaultPosition; size: WxSize = wxDefaultSize;
            style: clong = wxGA_HORIZONTAL;
            validator: WxValidator = wxDefaultValidator;
            name: WxString = constructWxString("gauge")): bool {.cdecl,
    importcpp: "Create", header: wxh.}
proc getBezelFace*(this: WxGauge): cint {.noSideEffect, cdecl,
                                      importcpp: "GetBezelFace", header: wxh.}
proc getRange*(this: WxGauge): cint {.noSideEffect, cdecl, importcpp: "GetRange",
                                  header: wxh.}
proc getShadowWidth*(this: WxGauge): cint {.noSideEffect, cdecl,
                                        importcpp: "GetShadowWidth", header: wxh.}
proc getValue*(this: WxGauge): cint {.noSideEffect, cdecl, importcpp: "GetValue",
                                  header: wxh.}
proc isVertical*(this: WxGauge): bool {.noSideEffect, cdecl, importcpp: "IsVertical",
                                    header: wxh.}
proc pulse*(this: var WxGauge) {.cdecl, importcpp: "Pulse", header: wxh.}
proc setBezelFace*(this: var WxGauge; width: cint) {.cdecl, importcpp: "SetBezelFace",
    header: wxh.}
proc setRange*(this: var WxGauge; range: cint) {.cdecl, importcpp: "SetRange",
    header: wxh.}
proc setShadowWidth*(this: var WxGauge; width: cint) {.cdecl,
    importcpp: "SetShadowWidth", header: wxh.}
proc setValue*(this: var WxGauge; pos: cint) {.cdecl, importcpp: "SetValue", header: wxh.}