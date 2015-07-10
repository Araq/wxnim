


type 
  WxKeyboardState* {.importcpp: "wxKeyboardState", header: "<wx/wx.h>".} = object 
    mControlDown* {.importc: "m_controlDown".}: bool
    mShiftDown* {.importc: "m_shiftDown".}: bool
    mAltDown* {.importc: "m_altDown".}: bool
    mMetaDown* {.importc: "m_metaDown".}: bool


proc constructwxKeyboardState*(controlDown: bool = false; 
                               shiftDown: bool = false; altDown: bool = false; 
                               metaDown: bool = false): WxKeyboardState {.cdecl, 
    constructor, importcpp: "wxKeyboardState(@)", header: "<wx/wx.h>".}
proc getModifiers*(this: WxKeyboardState): cint {.noSideEffect, cdecl, 
    importcpp: "GetModifiers", header: "<wx/wx.h>".}
proc hasAnyModifiers*(this: WxKeyboardState): bool {.noSideEffect, cdecl, 
    importcpp: "HasAnyModifiers", header: "<wx/wx.h>".}
proc hasModifiers*(this: WxKeyboardState): bool {.noSideEffect, cdecl, 
    importcpp: "HasModifiers", header: "<wx/wx.h>".}
proc controlDown*(this: WxKeyboardState): bool {.noSideEffect, cdecl, 
    importcpp: "ControlDown", header: "<wx/wx.h>".}
proc rawControlDown*(this: WxKeyboardState): bool {.noSideEffect, cdecl, 
    importcpp: "RawControlDown", header: "<wx/wx.h>".}
proc shiftDown*(this: WxKeyboardState): bool {.noSideEffect, cdecl, 
    importcpp: "ShiftDown", header: "<wx/wx.h>".}
proc metaDown*(this: WxKeyboardState): bool {.noSideEffect, cdecl, 
    importcpp: "MetaDown", header: "<wx/wx.h>".}
proc altDown*(this: WxKeyboardState): bool {.noSideEffect, cdecl, 
    importcpp: "AltDown", header: "<wx/wx.h>".}
proc cmdDown*(this: WxKeyboardState): bool {.noSideEffect, cdecl, 
    importcpp: "CmdDown", header: "<wx/wx.h>".}
proc setControlDown*(this: var WxKeyboardState; down: bool) {.cdecl, 
    importcpp: "SetControlDown", header: "<wx/wx.h>".}
proc setRawControlDown*(this: var WxKeyboardState; down: bool) {.cdecl, 
    importcpp: "SetRawControlDown", header: "<wx/wx.h>".}
proc setShiftDown*(this: var WxKeyboardState; down: bool) {.cdecl, 
    importcpp: "SetShiftDown", header: "<wx/wx.h>".}
proc setAltDown*(this: var WxKeyboardState; down: bool) {.cdecl, 
    importcpp: "SetAltDown", header: "<wx/wx.h>".}
proc setMetaDown*(this: var WxKeyboardState; down: bool) {.cdecl, 
    importcpp: "SetMetaDown", header: "<wx/wx.h>".}