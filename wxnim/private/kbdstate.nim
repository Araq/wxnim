


type 
  WxKeyboardState* {.importcpp: "wxKeyboardState", header: wxh.} = object 
    mControlDown* {.importc: "m_controlDown".}: bool
    mShiftDown* {.importc: "m_shiftDown".}: bool
    mAltDown* {.importc: "m_altDown".}: bool
    mMetaDown* {.importc: "m_metaDown".}: bool


proc constructwxKeyboardState*(controlDown: bool = false; 
                               shiftDown: bool = false; altDown: bool = false; 
                               metaDown: bool = false): WxKeyboardState {.cdecl, 
    constructor, importcpp: "wxKeyboardState(@)", header: wxh.}
proc getModifiers*(this: WxKeyboardState): cint {.noSideEffect, cdecl, 
    importcpp: "GetModifiers", header: wxh.}
proc hasAnyModifiers*(this: WxKeyboardState): bool {.noSideEffect, cdecl, 
    importcpp: "HasAnyModifiers", header: wxh.}
proc hasModifiers*(this: WxKeyboardState): bool {.noSideEffect, cdecl, 
    importcpp: "HasModifiers", header: wxh.}
proc controlDown*(this: WxKeyboardState): bool {.noSideEffect, cdecl, 
    importcpp: "ControlDown", header: wxh.}
proc rawControlDown*(this: WxKeyboardState): bool {.noSideEffect, cdecl, 
    importcpp: "RawControlDown", header: wxh.}
proc shiftDown*(this: WxKeyboardState): bool {.noSideEffect, cdecl, 
    importcpp: "ShiftDown", header: wxh.}
proc metaDown*(this: WxKeyboardState): bool {.noSideEffect, cdecl, 
    importcpp: "MetaDown", header: wxh.}
proc altDown*(this: WxKeyboardState): bool {.noSideEffect, cdecl, 
    importcpp: "AltDown", header: wxh.}
proc cmdDown*(this: WxKeyboardState): bool {.noSideEffect, cdecl, 
    importcpp: "CmdDown", header: wxh.}
proc setControlDown*(this: var WxKeyboardState; down: bool) {.cdecl, 
    importcpp: "SetControlDown", header: wxh.}
proc setRawControlDown*(this: var WxKeyboardState; down: bool) {.cdecl, 
    importcpp: "SetRawControlDown", header: wxh.}
proc setShiftDown*(this: var WxKeyboardState; down: bool) {.cdecl, 
    importcpp: "SetShiftDown", header: wxh.}
proc setAltDown*(this: var WxKeyboardState; down: bool) {.cdecl, 
    importcpp: "SetAltDown", header: wxh.}
proc setMetaDown*(this: var WxKeyboardState; down: bool) {.cdecl, 
    importcpp: "SetMetaDown", header: wxh.}