

const
  wxSL_HORIZONTAL* = wxHORIZONTAL
  wxSL_VERTICAL* = wxVERTICAL
  wxSL_TICKS* = 0x00000010
  wxSL_AUTOTICKS* = wxSL_TICKS
  wxSL_LEFT* = 0x00000040
  wxSL_TOP* = 0x00000080
  wxSL_RIGHT* = 0x00000100
  wxSL_BOTTOM* = 0x00000200
  wxSL_BOTH* = 0x00000400
  wxSL_SELRANGE* = 0x00000800
  wxSL_INVERSE* = 0x00001000
  wxSL_MIN_MAX_LABELS* = 0x00002000
  wxSL_VALUE_LABEL* = 0x00004000
  wxSL_LABELS* = (wxSL_MIN_MAX_LABELS or wxSL_VALUE_LABEL)


type
  WxSlider* {.importcpp: "wxSlider", header: wxh.} = object of WxControl

proc constructwxSlider*(): WxSlider {.cdecl, constructor, importcpp: "wxSlider(@)",
                                   header: wxh.}
proc constructwxSlider*(parent: ptr WxWindow; id: WxWindowID; value: cint;
                       minValue: cint; maxValue: cint;
                       pos: WxPoint = wxDefaultPosition;
                       size: WxSize = wxDefaultSize; style: clong = wxSL_HORIZONTAL;
                       validator: WxValidator = wxDefaultValidator;
                       name: WxString = "slider"): WxSlider {.cdecl,
    constructor, importcpp: "wxSlider(@)", header: wxh.}
proc destroywxSlider*(this: var WxSlider) {.cdecl, importcpp: "#.~wxSlider()",
                                        header: wxh.}
proc clearSel*(this: var WxSlider) {.cdecl, importcpp: "ClearSel", header: wxh.}
proc clearTicks*(this: var WxSlider) {.cdecl, importcpp: "ClearTicks", header: wxh.}
proc create*(this: var WxSlider; parent: ptr WxWindow; id: WxWindowID; value: cint;
            minValue: cint; maxValue: cint; point: WxPoint = wxDefaultPosition;
            size: WxSize = wxDefaultSize; style: clong = wxSL_HORIZONTAL;
            validator: WxValidator = wxDefaultValidator;
            name: WxString = "slider"): bool {.cdecl, importcpp: "Create",
    header: wxh.}
proc getLineSize*(this: WxSlider): cint {.noSideEffect, cdecl,
                                      importcpp: "GetLineSize", header: wxh.}
proc getMax*(this: WxSlider): cint {.noSideEffect, cdecl, importcpp: "GetMax",
                                 header: wxh.}
proc getMin*(this: WxSlider): cint {.noSideEffect, cdecl, importcpp: "GetMin",
                                 header: wxh.}
proc getPageSize*(this: WxSlider): cint {.noSideEffect, cdecl,
                                      importcpp: "GetPageSize", header: wxh.}
proc getSelEnd*(this: WxSlider): cint {.noSideEffect, cdecl, importcpp: "GetSelEnd",
                                    header: wxh.}
proc getSelStart*(this: WxSlider): cint {.noSideEffect, cdecl,
                                      importcpp: "GetSelStart", header: wxh.}
proc getThumbLength*(this: WxSlider): cint {.noSideEffect, cdecl,
    importcpp: "GetThumbLength", header: wxh.}
proc getTickFreq*(this: WxSlider): cint {.noSideEffect, cdecl,
                                      importcpp: "GetTickFreq", header: wxh.}
proc getValue*(this: WxSlider): cint {.noSideEffect, cdecl, importcpp: "GetValue",
                                   header: wxh.}
proc setLineSize*(this: var WxSlider; lineSize: cint) {.cdecl,
    importcpp: "SetLineSize", header: wxh.}
proc setMin*(this: var WxSlider; minValue: cint) {.cdecl, importcpp: "SetMin",
    header: wxh.}
proc setMax*(this: var WxSlider; maxValue: cint) {.cdecl, importcpp: "SetMax",
    header: wxh.}
proc setPageSize*(this: var WxSlider; pageSize: cint) {.cdecl,
    importcpp: "SetPageSize", header: wxh.}
proc setRange*(this: var WxSlider; minValue: cint; maxValue: cint) {.cdecl,
    importcpp: "SetRange", header: wxh.}
proc setSelection*(this: var WxSlider; startPos: cint; endPos: cint) {.cdecl,
    importcpp: "SetSelection", header: wxh.}
proc setThumbLength*(this: var WxSlider; len: cint) {.cdecl,
    importcpp: "SetThumbLength", header: wxh.}
proc setTick*(this: var WxSlider; tickPos: cint) {.cdecl, importcpp: "SetTick",
    header: wxh.}
proc setTickFreq*(this: var WxSlider; n: cint) {.cdecl, importcpp: "SetTickFreq",
    header: wxh.}
proc setValue*(this: var WxSlider; value: cint) {.cdecl, importcpp: "SetValue",
    header: wxh.}